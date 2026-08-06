import '../entities/wall_detail_entity.dart';

/// 详情仓库抽象
///
/// 职责说明：
/// - 定义详情页数据访问契约
/// - 实现由 [DetailRepositoryImpl] 负责
///
/// 设计模式：仓库模式（Repository）+ 依赖倒置
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
abstract class DetailRepository {
  /// 获取详情
  Future<WallDetailEntity> getDetail(int id);
}
