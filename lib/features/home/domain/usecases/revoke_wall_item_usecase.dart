import '../repositories/wall_repository.dart';

/// 撤回用例
///
/// 职责说明：
/// - 封装"撤回自己发布内容"的业务逻辑
/// - 调用 [WallRepository.revoke]
/// - 可叠加权限校验（仅本人可撤回）
///
/// 设计模式：用例（Use Case）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class RevokeWallItemUseCase {
  final WallRepository _repository;

  RevokeWallItemUseCase(this._repository);

  /// 执行用例
  Future<void> call(int id) => _repository.revoke(id);
}
