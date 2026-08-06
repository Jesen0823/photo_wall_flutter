import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/// 日志拦截器
///
/// 职责说明：
/// - 记录请求与响应的完整信息（method / url / body / status / duration）
/// - dev 环境输出到 console，prod 环境可接入日志平台
/// - 自动脱敏敏感字段（token / password）
///
/// 设计模式：责任链节点 + 装饰器
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class LoggingInterceptor extends Interceptor {
  LoggingInterceptor({this.enableBodyLog = true});

  final bool enableBodyLog;

  /// 需要脱敏的字段名
  static const List<String> _sensitiveKeys = <String>[
    'token',
    'password',
    'password_confirmation',
    'authorization',
    'Authorization',
    'secret',
    'api_key',
  ];

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.extra['startTime'] = DateTime.now().millisecondsSinceEpoch;
    debugPrint('[HTTP] → ${options.method} ${options.uri}');
    if (enableBodyLog && options.data != null) {
      debugPrint('[HTTP] body: ${_mask(options.data)}');
    }
    handler.next(options);
  }

  @override
  void onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) {
    final int? start = response.requestOptions.extra['startTime'] as int?;
    final int duration = start != null ? DateTime.now().millisecondsSinceEpoch - start : -1;
    debugPrint('[HTTP] ← ${response.statusCode} ${response.requestOptions.uri} (${duration}ms)');
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint('[HTTP] ✗ ${err.type.name} ${err.requestOptions.uri}'
        ' status=${err.response?.statusCode} msg=${err.message}');
    handler.next(err);
  }

  /// 脱敏处理：将敏感字段替换为 `***`
  String _mask(Object? data) {
    if (data == null) return 'null';
    if (data is Map) {
      final Map<String, dynamic> masked = <String, dynamic>{};
      data.forEach((dynamic key, dynamic value) {
        final String keyStr = key.toString();
        if (_sensitiveKeys.contains(keyStr.toLowerCase())) {
          masked[keyStr] = '***';
        } else {
          masked[keyStr] = value;
        }
      });
      return masked.toString();
    }
    return data.toString();
  }
}
