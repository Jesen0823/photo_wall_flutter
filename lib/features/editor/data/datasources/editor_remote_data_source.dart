import 'package:dio/dio.dart';

import '../../../../core/network/dio_client.dart';
import '../models/publish_request.dart';

/// 编辑/发布远程数据源
///
/// 职责说明：
/// - 封装发布/编辑接口的 HTTP 调用
/// - 仅负责网络请求与 JSON 序列化
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class EditorRemoteDataSource {
  final DioClient _client;

  EditorRemoteDataSource(this._client);

  /// 发布
  Future<int> publish(PublishRequest request) async {
    // TODO: 接口路径待后端确认
    final Response<Map<String, dynamic>> response =
        await _client.post('/publishWall', data: request.toJson());
    final int? id = response.data?['id'] as int?;
    return id ?? 0;
  }

  /// 编辑
  Future<void> edit(PublishRequest request) async {
    // TODO: 接口路径待后端确认
    await _client.post<Map<String, dynamic>>('/editWall', data: request.toJson());
  }
}
