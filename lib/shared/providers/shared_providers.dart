import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/database/app_database.dart';
import '../../core/network/dio_client.dart';
import '../../core/network/network_info.dart';
import '../../features/detail/data/datasources/detail_remote_data_source.dart';
import '../../features/detail/data/repositories/detail_repository_impl.dart';
import '../../features/detail/domain/repositories/detail_repository.dart';
import '../../features/detail/domain/usecases/get_wall_detail_usecase.dart';
import '../../features/editor/data/datasources/editor_remote_data_source.dart';
import '../../features/editor/data/repositories/editor_repository_impl.dart';
import '../../features/editor/domain/repositories/editor_repository.dart';
import '../../features/editor/domain/usecases/edit_wall_item_usecase.dart';
import '../../features/editor/domain/usecases/publish_message_usecase.dart';
import '../../features/editor/domain/usecases/publish_photo_usecase.dart';
import '../../features/home/data/datasources/wall_local_data_source.dart';
import '../../features/home/data/datasources/wall_remote_data_source.dart';
import '../../features/home/data/mappers/wall_mapper.dart';
import '../../features/home/data/repositories/wall_repository_impl.dart';
import '../../features/home/domain/repositories/wall_repository.dart';
import '../../features/home/domain/usecases/get_wall_page_usecase.dart';
import '../../features/home/domain/usecases/like_wall_item_usecase.dart';
import '../../features/home/domain/usecases/report_wall_item_usecase.dart';
import '../../features/home/domain/usecases/revoke_wall_item_usecase.dart';

part 'shared_providers.g.dart';

/// =============================================================================
/// 仓库层 Provider
/// =============================================================================
/// 注入 DataSource 与 NetworkInfo，构造 Repository 实例。
/// =============================================================================

@Riverpod(keepAlive: true)
WallRepository wallRepository(Ref ref) {
  return WallRepositoryImpl(
    remote: WallRemoteDataSource(ref.watch(dioClientProvider)),
    local: WallLocalDataSource(ref.watch(appDatabaseProvider)),
    networkInfo: ref.watch(networkInfoProvider),
    mapper: WallMapper(),
  );
}

@Riverpod(keepAlive: true)
DetailRepository detailRepository(Ref ref) {
  return DetailRepositoryImpl(
    DetailRemoteDataSource(ref.watch(dioClientProvider)),
  );
}

@Riverpod(keepAlive: true)
EditorRepository editorRepository(Ref ref) {
  return EditorRepositoryImpl(
    EditorRemoteDataSource(ref.watch(dioClientProvider)),
  );
}

/// =============================================================================
/// 用例层 Provider
/// =============================================================================
/// 由 Repository 构造各 UseCase，供 ViewModel 调用。
/// =============================================================================

@riverpod
GetWallPageUseCase getWallPageUseCase(Ref ref) =>
    GetWallPageUseCase(ref.watch(wallRepositoryProvider));

@riverpod
LikeWallItemUseCase likeWallItemUseCase(Ref ref) =>
    LikeWallItemUseCase(ref.watch(wallRepositoryProvider));

@riverpod
ReportWallItemUseCase reportWallItemUseCase(Ref ref) =>
    ReportWallItemUseCase(ref.watch(wallRepositoryProvider));

@riverpod
RevokeWallItemUseCase revokeWallItemUseCase(Ref ref) =>
    RevokeWallItemUseCase(ref.watch(wallRepositoryProvider));

@riverpod
GetWallDetailUseCase getWallDetailUseCase(Ref ref) =>
    GetWallDetailUseCase(ref.watch(detailRepositoryProvider));

@riverpod
PublishPhotoUseCase publishPhotoUseCase(Ref ref) =>
    PublishPhotoUseCase(ref.watch(editorRepositoryProvider));

@riverpod
PublishMessageUseCase publishMessageUseCase(Ref ref) =>
    PublishMessageUseCase(ref.watch(editorRepositoryProvider));

@riverpod
EditWallItemUseCase editWallItemUseCase(Ref ref) =>
    EditWallItemUseCase(ref.watch(editorRepositoryProvider));
