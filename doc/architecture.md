# photo_wall_flutter 架构设计文档

> 项目：photo_wall_flutter（留言 / 日记 / 照片墙应用）
> 版本：v1.0（工程骨架）
> 日期：2026-08-05
> 适用平台：Android / iOS / Web

---

## 1. 架构总览

### 1.1 架构选型

采用 **MVVM + 分层清晰架构（Clean-ish）**，以 Riverpod 3.x 为状态管理核心。

```
┌─────────────────────────────────────────────────────────────┐
│                    UI Layer (Presentation)                   │
│   Pages (Widget)  ←→  Providers (ViewModel/Notifier)        │
│   Widgets (Reusable)         ↑                              │
└───────────────────────────────┼─────────────────────────────┘
                                │ 依赖抽象
┌───────────────────────────────┼─────────────────────────────┐
│                    Domain Layer                              │
│   Entities   UseCases   Repository (abstract)               │
└───────────────────────────────┼─────────────────────────────┘
                                │ 实现
┌───────────────────────────────┼─────────────────────────────┐
│                    Data Layer                                │
│   RepositoryImpl   DataSource (Remote/Local)   Models       │
│   Mappers                                                    │
└─────────────────────────────────────────────────────────────┘
```

### 1.2 分层职责

| 层 | 职责 | 关键组件 |
|----|------|----------|
| **UI / Presentation** | 渲染界面、响应用户交互、调用 ViewModel | `Page` / `Widget` / `Notifier` / `State` |
| **Domain** | 表达业务规则、定义契约，与平台/框架无关 | `Entity` / `UseCase` / `Repository（abstract）` |
| **Data** | 实现数据访问、网络请求、本地缓存、模型转换 | `RepositoryImpl` / `DataSource` / `Model` / `Mapper` |
| **Core** | 跨模块基础设施（网络 / 数据库 / 路由 / 主题 / 工具） | `core/*` |
| **Shared** | 跨模块 Riverpod Provider 装配（DI 容器） | `shared/providers/shared_providers.dart` |

### 1.3 数据流（MVVM + Riverpod）

```
用户操作 ─→ Page(Widget) ─→ Notifier(ViewModel) ─→ UseCase
                                                          │
                              ┌───────────────────────────┘
                              ▼
                          Repository (abstract)
                              │ 实现
                              ▼
                          RepositoryImpl ─→ DataSource (Remote/Local)
                              │                  │
                              │ 异常转换          │ HTTP / SQLite
                              ▼                  ▼
                            Failure          Dio / drift
                              │
                              ▼
                          State (freezed)
                              │
                              ▼
                          Page 重建（ref.watch）
```

---

## 2. 状态管理（Riverpod 3.x）

### 2.1 Notifier 范式

- **同步状态**：继承 `Notifier<T>`，`build()` 返回初始状态。
- **异步状态**：继承 `AsyncNotifier<T>`，`build()` 返回 `Future<T>`，UI 用 `AsyncValue.when` 切换。
- **代码生成**：使用 `@riverpod` 注解 + `riverpod_generator` 自动生成 Provider。

### 2.2 Provider 生命周期

| 注解 | 行为 | 用途 |
|------|------|------|
| `@riverpod` | 自动 dispose | 页面级 ViewModel |
| `@Riverpod(keepAlive: true)` | 全局单例 | Dio / 数据库 / Repository / 全局配置 |

### 2.3 状态对象（freezed）

每个 Notifier 配套一个 `freezed` 状态类：

```dart
@freezed
class WallPageState with _$WallPageState {
  const factory WallPageState({
    @Default(WallType.message) WallType type,
    @Default(1) int page,
    @Default(<WallItemEntity>[]) List<WallItemEntity> items,
    @Default(false) bool isRefreshing,
    String? errorMessage,
  }) = _WallPageState;
}
```

---

## 3. 网络层设计

### 3.1 拦截器链

`DioClient` 按以下顺序注册拦截器：

```
请求 → Header → Auth → Retry → Logging → Error → Dio
响应 ←                                            ← Dio
```

| 拦截器 | 职责 |
|--------|------|
| `HeaderInterceptor` | 注入公共请求头（平台、版本、语言） |
| `AuthInterceptor` | 预留：注入 Authorization、处理 401 |
| `RetryInterceptor` | 网络错误自动重试（指数退避，默认 2 次） |
| `LoggingInterceptor` | 请求/响应日志、自动脱敏 |
| `ErrorInterceptor` | DioException → ApiException 统一转换 |

### 3.2 统一错误码体系

`ErrorCode` 枚举覆盖：

- 网络类：`network` / `timeout` / `connection` / `cancel`
- HTTP 类：`client` / `server` / `unauthorized` / `forbidden` / `notFound`
- 业务类：`business`（HTTP 200 但 `body.code != 200`）
- `unknown`

异常转换链：

```
DioException → ApiException（ErrorInterceptor）
            → Failure（ErrorHandler，Repository 层）
            → state.errorMessage（Notifier 层）
            → UI 错误占位（AppErrorWidget）
```

### 3.3 统一响应包装

`ApiResponse<T>` 描述后端统一结构：

```json
{ "code": 200, "message": [...数据...] }
```

`isSuccess` 判断业务码，失败时 `toBusinessException()` 转换为 `ApiException`。

---

## 4. 本地缓存策略（drift）

### 4.1 选型

- **drift**（+ sqlite3_flutter_libs）：类型安全、响应式、DAO 模式，最接近 Android Room。
- 用于首页列表缓存，弱网下优先展示。

### 4.2 NetworkBoundResource 模式

`WallRepositoryImpl.findPage` 实现"缓存优先"策略：

```
1. 检测网络状态（NetworkInfo.isConnected）
2. 无网 → 返回 drift 缓存
3. 在线 → 拉取网络数据 → 更新缓存 → 返回最新数据
4. 网络失败 → 降级返回缓存
5. 缓存也失败 → 抛 Failure
```

### 4.3 数据库结构

- `WallCacheTable`：缓存列表项，含 `cachedAt` 与 `page/pageSize` 字段支持过期清理与按页查询。
- `WallCacheDao`：封装 CRUD。
- `AppDatabase`：drift 入口，schemaVersion = 1，预留 migration。

---

## 5. 路由设计（go_router）

### 5.1 路由表

| 路径 | 名称 | 页面 | 备注 |
|------|------|------|------|
| `/` | home | HomePage | Tab 容器（照片墙 + 留言墙） |
| `/photo/:id` | photoDetail | PhotoDetailPage | 照片详情 |
| `/message/:id` | messageDetail | MessageDetailPage | 留言详情 |
| `/editor/photo` | photoEditor | PhotoEditorPage | 照片发布/编辑 |
| `/editor/message` | messageEditor | MessageEditorPage | 留言发布/编辑 |
| `/login` | login | LoginPage | 预留 |
| `/register` | register | RegisterPage | 预留 |

### 5.2 路由守卫

- `AuthGuard.redirect()`：全局重定向，预留登录拦截入口。
- `AppRouteObserver`：观察 push/pop/replace，用于埋点。

### 5.3 错误页降级

`GoRouter.errorBuilder` 渲染 `AppErrorWidget`，未知路由统一显示"页面不存在"。

---

## 6. 主题与国际化

### 6.1 主题

- Material 3 亮/暗双主题，`ColorScheme.fromSeed` 生成。
- `ThemeModeController`（Riverpod Notifier）持有 `ThemeMode`，持久化到 SharedPreferences。
- `PhotoWallApp` 通过 `ref.watch(themeModeControllerProvider)` 读取并应用。

### 6.2 国际化

- `flutter_localizations` + `intl` + `arb` 文件方案。
- 配置：`l10n.yaml` → `lib/l10n/app_en.arb` / `app_zh.arb`。
- 自动生成 `AppLocalizations` 类，通过 `AppLocalizations.delegate` 加载。
- 支持语言：en（模板）、zh。

---

## 7. 依赖注入（Riverpod Provider 体系）

### 7.1 装配位置

`lib/shared/providers/shared_providers.dart` 集中装配跨模块 Provider：

```
DioClient → DataSource → Repository → UseCase → Notifier
```

### 7.2 Provider 拓扑

```
envConfigProvider ─→ dioClientProvider ─┐
                                        ├→ wallRepositoryProvider ─→ getWallPageUseCaseProvider ─→ wallPageNotifierProvider
appDatabaseProvider ─→ wallCacheDao ────┘                        ├→ likeWallItemUseCaseProvider
                                                                ├→ reportWallItemUseCaseProvider
                                                                └→ revokeWallItemUseCaseProvider

dioClientProvider ─→ detailRemoteDataSource ─→ detailRepositoryProvider ─→ getWallDetailUseCaseProvider ─→ detailNotifierProvider

dioClientProvider ─→ editorRemoteDataSource ─→ editorRepositoryProvider ─→ publishPhotoUseCaseProvider ─→ editorNotifierProvider
                                                                       ├→ publishMessageUseCaseProvider
                                                                       └→ editWallItemUseCaseProvider

networkInfoProvider ─→ wallRepositoryProvider（缓存策略依赖）

localStorageProvider ─→ themeModeControllerProvider
```

### 7.3 测试替换

- Provider 通过 `overrideWith` / `overrideWithProvider` 在测试中替换为 mock。
- 推荐使用 `mocktail`，无需手写 stub。

---

## 8. 多平台兼容性

| 平台 | 网络权限 | 明文 HTTP | 本地存储 | 备注 |
|------|----------|-----------|----------|------|
| Android | `INTERNET` + `ACCESS_NETWORK_STATE` | `usesCleartextTraffic="true"`（dev） | drift（SQLite，path_provider） | 已配置 |
| iOS | 默认允许 | `NSAppTransportSecurity` localhost 例外（dev） | drift（SQLite） | 已配置 |
| Web | 浏览器原生 | CORS 由后端处理 | drift Web 暂不支持（需后续接入 sql.js） | 暂仅支持网络模式 |

### 8.1 平台同步原则

- 三端代码编辑与配置必须同步。
- 当前开发机为 Windows + Android Studio，仅能编译 Android 与 Web，iOS 配置同步但不编译。

---

## 9. Google Play 上架就绪清单

> 当前阶段为骨架，上架前需逐项确认。

### 9.1 应用配置

- [ ] `applicationId` 唯一且稳定
- [ ] `versionCode` 单调递增，`versionName` 语义化
- [ ] `targetSdkVersion` ≥ 最新要求（Google Play 政策）
- [ ] `minSdkVersion` ≥ 21（drift 要求）
- [ ] 64-bit 支持（NDK ≥ 21，Flutter 默认）

### 9.2 隐私与数据安全

- [ ] 隐私政策 URL（应用内可访问）
- [ ] 数据安全表（Data Safety Form）填写：网络数据传输、本地缓存
- [ ] 权限使用说明（INTERNET / ACCESS_NETWORK_STATE）
- [ ] 不收集敏感个人信息（如未实现登录则无需声明）

### 9.3 内容与版权

- [ ] 应用内容分级问卷
- [ ] 目标受众选择
- [ ] 应用图标、截图、宣传图
- [ ] 数据删除入口（提供"清除缓存"功能，已由 `WallRepository.clearCache` 预留）

### 9.4 签名与发布

- [ ] 启用 Play App Signing
- [ ] 上传签名密钥（keystore）安全存储
- [ ] 构建变体：dev / staging / prod 三套配置（参考 `EnvConfig`）

---

## 10. 命名规范与代码风格

### 10.1 文件命名

- `snake_case.dart`（Dart 强制）。
- 抽象类与接口文件名直接使用类名（如 `wall_repository.dart`）。
- 实现类文件名加 `_impl` 后缀（如 `wall_repository_impl.dart`）。
- 状态文件以 `_state.dart` 结尾，Provider 以 `_provider.dart` 结尾。
- 生成文件：`*.g.dart`（json_serializable / riverpod_generator）、`*.freezed.dart`、`*.drift.dart`。

### 10.2 类命名

- 类：`PascalCase`。
- Provider 函数：`camelCaseProvider`（如 `dioClientProvider`）。
- 常量：`lowerCamelCase`（Dart 规范，非 SCREAMING_SNAKE_CASE）。
- 私有成员以 `_` 前缀。

### 10.3 注释规范

- 每个文件头：标准 doc 注释，含"职责说明""设计模式""作者""日期"。
- 公开 API：`///` doc 注释。
- TODO：`// TODO: 描述`，标注责任人与时机（如适用）。

### 10.4 Lint 规则

- 启用 `flutter_lints` + `riverpod_lint` + `custom_lint`。
- 启用 `strict-casts` / `strict-inference` / `strict-raw-types`。
- 强制 `prefer_const_*` / `require_trailing_commas` / `sort_child_properties_last`。

---

## 11. 测试策略

### 11.1 测试分层

| 类型 | 工具 | 覆盖目标 | 范围 |
|------|------|----------|------|
| 单元测试 | `package:test` + `mocktail` | UseCase / Repository / Mapper / Notifier | `test/` 镜像 `lib/` 结构 |
| Widget 测试 | `flutter_test` | 单个 Widget 渲染与交互 | `test/features/<feature>/presentation/widgets/` |
| 集成测试 | `integration_test` | 端到端用户流程 | `integration_test/` |

### 11.2 命名约定

- 文件：`<被测对象>_test.dart`，与 `lib/` 镜像目录结构。
- 用例：`test('should <期望> when <前置>')`。

### 11.3 Mock 策略

- Repository 测试：mock DataSource，验证 mapper 与缓存策略。
- Notifier 测试：mock UseCase，验证状态转换。
- Widget 测试：override Provider，验证 UI 渲染。

---

## 12. 代码生成（build_runner）

### 12.1 涉及模块

| 工具 | 生成目标 | 产物 |
|------|----------|------|
| `freezed` | 不可变模型 / 状态类 | `*.freezed.dart` |
| `json_serializable` | JSON 序列化 | `*.g.dart` |
| `riverpod_generator` | Riverpod Provider | `*.g.dart` |
| `drift_dev` | drift 数据库 | `*.drift.dart`（实际为 `app_database.g.dart`） |

### 12.2 执行命令

```bash
# 一次性生成
dart run build_runner build --delete-conflicting-outputs

# 持续监听
dart run build_runner watch -d
```

### 12.3 当前状态（已完成 ✅）

骨架阶段所有 `part` 指令与代码生成注解（`@freezed` / `@Riverpod` / `@DriftDatabase`）已就位，
**`build_runner` 已成功执行，生成 70 个代码文件（含 22 个 `.g.dart` / `.freezed.dart` 产物）**。

已验证的生成文件清单（共 22 个）：

| 生成文件 | 生成工具 | 源文件 |
|----------|----------|--------|
| `theme_mode_provider.g.dart` | riverpod_generator | `core/theme/` |
| `dio_client.g.dart` | riverpod_generator | `core/network/` |
| `network_info.g.dart` | riverpod_generator | `core/network/` |
| `local_storage.g.dart` | riverpod_generator | `core/storage/` |
| `app_database.g.dart` | drift_dev | `core/database/` |
| `shared_providers.g.dart` | riverpod_generator | `shared/providers/` |
| `wall_page_provider.g.dart` | riverpod_generator | `features/home/presentation/providers/` |
| `wall_page_state.freezed.dart` | freezed | `features/home/presentation/providers/` |
| `wall_item_model.freezed.dart` / `.g.dart` | freezed + json_serializable | `features/home/data/models/` |
| `count_model.freezed.dart` / `.g.dart` | freezed + json_serializable | `features/home/data/models/` |
| `wall_query_request.freezed.dart` / `.g.dart` | freezed + json_serializable | `features/home/data/models/` |
| `detail_provider.g.dart` | riverpod_generator | `features/detail/presentation/providers/` |
| `detail_state.freezed.dart` | freezed | `features/detail/presentation/providers/` |
| `detail_response.freezed.dart` / `.g.dart` | freezed + json_serializable | `features/detail/data/models/` |
| `editor_provider.g.dart` | riverpod_generator | `features/editor/presentation/providers/` |
| `editor_state.freezed.dart` | freezed | `features/editor/presentation/providers/` |
| `publish_request.freezed.dart` / `.g.dart` | freezed + json_serializable | `features/editor/data/models/` |

> **注意**：`analysis_options.yaml` 已将生成文件排除在静态分析之外（`exclude` 段），
> 生成代码无需手动维护。`custom_lint` 插件因 pub_cache 路径问题可能导致分析超时，
> 可临时注释 `plugins` 段下的 `custom_lint` 以加速 `dart analyze`。

---

## 13. 目录结构总览

详见 [实施计划 4.4 节](./.trae/documents/flutter_architecture_setup_plan.md)。

```
lib/
├── main.dart                      # 入口
├── app.dart                       # 根 Widget
├── core/                          # 跨模块基础设施
│   ├── constants/  config/  theme/
│   ├── routing/    network/  database/
│   ├── error/       storage/  utils/
│   └── widgets/
├── l10n/                          # arb 资源
├── features/                      # 功能模块
│   ├── home/      detail/      editor/      auth/
│   └── <feature>/{data, domain, presentation}
└── shared/providers/              # Provider 装配
```

---

## 14. 后续演进路线

| 阶段 | 目标 | 关键任务 | 状态 |
|------|------|----------|------|
| **已完成** | 骨架搭建 | 依赖配置、目录结构（104 源文件 + 22 生成文件）、import 修复、BOM 清理、build_runner 生成 | ✅ |
| **下一阶段** | 首屏可运行 | 接入真实 API、首页照片墙/留言墙列表、缓存策略实现、路由守卫启用 | 🔲 |
| **中期** | 详情与编辑 | 详情页、发布/编辑流程、图片上传 | 🔲 |
| **中后期** | 登录注册 | 接入鉴权、token 持久化、路由守卫启用 | 🔲 |
| **长期** | Google Play 上架 | 按 §9 清单逐项验收、构建变体、签名发布 | 🔲 |

---

## 附录 A：关键设计模式速查

| 模式 | 应用位置 |
|------|----------|
| **MVVM** | Page(View) + Notifier(ViewModel) + State |
| **Repository** | `WallRepository` ↔ `WallRepositoryImpl` |
| **Strategy** | 缓存优先 / 仅网络 / 仅缓存 三种数据策略 |
| **Factory** | `ErrorHandler.toFailure` / `ApiException.fromStatus` |
| **Adapter** | Mapper（model ↔ entity）、`NetworkInfo`（封装 connectivity_plus） |
| **Interceptor Chain** | Dio 拦截器链 |
| **Observer** | `AppRouteObserver` 路由观察者 |
| **Template Method** | `WallCard` 基类定义结构，子类实现 `buildContent` |
| **Singleton（受控）** | Dio / AppDatabase 通过 Riverpod keepAlive |
| **Dependency Injection** | Riverpod Provider 体系 |

## 附录 B：参考资料

- [Flutter 官方架构指南](https://docs.flutter.dev/app-architecture)
- [Riverpod 3.x 文档](https://pub.dev/packages/riverpod/versions/3.0.3)
- [go_router 文档](https://pub.dev/packages/go_router)
- [drift 文档](https://pub.dev/packages/drift)
- [freezed 文档](https://pub.dev/packages/freezed)
- [Flutter 国际化](https://docs.flutter.dev/ui/accessibility-and-internationalization/internationalization)
- [Google Play 政策中心](https://play.google.com/console/about/policies/)
