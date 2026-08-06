import 'package:drift/drift.dart';

/// 墙体缓存表（首页列表本地缓存）
///
/// 职责说明：
/// - 缓存首页照片墙 / 留言墙分页数据
/// - 弱网环境下优先展示缓存，提升用户体验
/// - 字段对应后端 WallItem 模型，便于快速序列化
///
/// 设计模式：数据表定义（DAO 模式的一部分）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class WallCacheTable extends Table {
  /// 主键：自增 id
  IntColumn get id => integer().autoIncrement()();

  /// 业务 id（与后端 id 对应，用于去重）
  IntColumn get remoteId => integer()();

  /// 类型：0=留言，1=照片
  IntColumn get type => integer()();

  /// 留言/照片内容
  TextColumn get message => text().nullable()();

  /// 发布者名称
  TextColumn get name => text()();

  /// 发布者 userId
  TextColumn get userId => text()();

  /// 发布时间（ISO 8601）
  TextColumn get moment => text()();

  /// 标签
  IntColumn get label => integer().withDefault(const Constant(0))();

  /// 卡片颜色索引
  IntColumn get color => integer().withDefault(const Constant(1))();

  /// 图片 URL（照片墙使用）
  TextColumn get imgUrl => text().nullable()();

  /// 点赞数
  IntColumn get likeCount => integer().withDefault(const Constant(0))();

  /// 举报数
  IntColumn get reportCount => integer().withDefault(const Constant(0))();

  /// 撤回数
  IntColumn get revokeCount => integer().withDefault(const Constant(0))();

  /// 评论数
  IntColumn get commentCount => integer().withDefault(const Constant(0))();

  /// 当前用户是否已点赞
  BoolColumn get isLiked => boolean().withDefault(const Constant(false))();

  /// 缓存写入时间戳（用于过期判断）
  DateTimeColumn get cachedAt => dateTime().withDefault(currentDateAndTime)();

  /// 分页页码（用于按页查询缓存）
  IntColumn get page => integer()();

  /// 分页大小
  IntColumn get pageSize => integer()();
}
