import 'package:dio/dio.dart';

import '../../../../core/network/api_endpoint.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/network/dio_client.dart';
import '../../domain/entities/wall_type.dart';
import '../models/wall_item_model.dart';
import '../models/wall_query_request.dart';

/// 留言/照片墙远程数据源
///
/// 职责说明：
/// - 封装 `/findWallPage` 等接口的 HTTP 调用
/// - 仅负责网络请求与 JSON 反序列化，不含业务逻辑
/// - 由 [WallRepositoryImpl] 调用
///
/// 设计模式：数据源（DataSource）+ 单一职责
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class WallRemoteDataSource {
  final DioClient _client;

  WallRemoteDataSource(this._client);

  /// 分页查询列表
  Future<List<WallItemModel>> findPage({
    required WallType type,
    required int page,
    required int pageSize,
    required String userId,
    int label = 5,
  }) async {
    // TODO: 实际接口路径待后端确认，此处使用 ApiConstants 中的占位
    final WallQueryRequest request = WallQueryRequest(
      type: type.value,
      page: page,
      pageSize: pageSize,
      userId: userId,
      label: label,
    );

    const ApiEndpoint endpoint = ApiEndpoint.post('/findWallPage');
    final Response<Map<String, dynamic>> response = await _client.post(
      endpoint.path,
      data: request.toJson(),
    );

    final Map<String, dynamic> body = response.data ?? <String, dynamic>{};
    final ApiResponse<List<WallItemModel>> apiResponse =
        ApiResponse.fromJson(
      body,
      (dynamic data) => (data as List<dynamic>)
          .map((dynamic e) =>
              WallItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

    if (!apiResponse.isSuccess) {
      throw apiResponse.toBusinessException();
    }
    return apiResponse.data ?? <WallItemModel>[];
  }

  /// 点赞（TODO: 接口路径待确认）
  Future<void> like(int id) {
    // TODO: 实现点赞接口调用
    throw UnimplementedError('like not implemented');
  }

  /// 举报（TODO: 接口路径待确认）
  Future<void> report(int id) {
    throw UnimplementedError('report not implemented');
  }

  /// 撤回（TODO: 接口路径待确认）
  Future<void> revoke(int id) {
    throw UnimplementedError('revoke not implemented');
  }
}
