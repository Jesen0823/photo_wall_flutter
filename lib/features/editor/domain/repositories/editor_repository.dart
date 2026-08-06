import '../entities/publish_entity.dart';

/// 编辑/发布仓库抽象
///
/// 职责说明：
/// - 定义发布与编辑的契约
/// - 实现由 [EditorRepositoryImpl] 负责
///
/// 设计模式：仓库模式（Repository）+ 依赖倒置
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
abstract class EditorRepository {
  /// 发布照片
  Future<int> publishPhoto(PublishEntity entity);

  /// 发布留言
  Future<int> publishMessage(PublishEntity entity);

  /// 编辑已发布内容
  Future<void> edit(PublishEntity entity);
}
