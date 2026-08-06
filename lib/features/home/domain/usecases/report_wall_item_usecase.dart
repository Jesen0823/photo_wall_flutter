import '../repositories/wall_repository.dart';

/// 举报用例
///
/// 职责说明：
/// - 封装"举报内容"的业务逻辑
/// - 调用 [WallRepository.report]
///
/// 设计模式：用例（Use Case）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class ReportWallItemUseCase {
  final WallRepository _repository;

  ReportWallItemUseCase(this._repository);

  /// 执行用例
  Future<void> call(int id) => _repository.report(id);
}
