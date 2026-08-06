import 'package:dio/dio.dart';

import '../../../../core/network/dio_client.dart';
import '../models/detail_response.dart';

/// 详情远程数据源
///
/// 职责说明：
/// - 封装详情接口的 HTTP 调用
/// - 仅负责网络请求与 JSON 反序列化
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class DetailRemoteDataSource {
  final DioClient _client;

  DetailRemoteDataSource(this._client);

  /// 获取详情
  Future<DetailResponse> getDetail(int id) async {
    // TODO: 实际接口路径待后端确认
    final Response<Map<String, dynamic>> response =
        await _client.post('/findWallDetail', data: <String, dynamic>{'id': id});
    return DetailResponse.fromJson(response.data ?? <String, dynamic>{});
  }
}
