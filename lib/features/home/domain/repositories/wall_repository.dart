import '../entities/wall_item_entity.dart';
import '../entities/wall_type.dart';

/// 留言/照片墙仓库抽象
///
/// 职责说明：
/// - 定义首页列表相关的数据访问契约
/// - 实现由 [WallRepositoryImpl] 负责（缓存优先策略）
/// - 上层 UseCase / ViewModel 依赖此抽象，便于测试替换
///
/// 设计模式：仓库模式（Repository）+ 依赖倒置
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
abstract class WallRepository {
  /// 分页查询列表
  ///
  /// 参数：
  /// - [type] 内容类型（留言/照片）
  /// - [page] 页码，从 1 开始
  /// - [pageSize] 每页条数
  /// - [userId] 当前用户 id
  /// - [label] 标签过滤
  Future<List<WallItemEntity>> findPage({
    required WallType type,
    required int page,
    required int pageSize,
    required String userId,
    int label = 5,
  });

  /// 点赞
  Future<void> like(int id);

  /// 举报
  Future<void> report(int id);

  /// 撤回
  Future<void> revoke(int id);

  /// 清空本地缓存（用于设置页"清除缓存"）
  Future<void> clearCache();
}
