import '../repositories/wall_repository.dart';

/// 点赞用例
///
/// 职责说明：
/// - 封装"对内容点赞"的业务逻辑
/// - 调用 [WallRepository.like]
/// - 可叠加乐观更新、防抖等逻辑
///
/// 设计模式：用例（Use Case）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class LikeWallItemUseCase {
  final WallRepository _repository;

  LikeWallItemUseCase(this._repository);

  /// 执行用例
  Future<void> call(int id) => _repository.like(id);
}
