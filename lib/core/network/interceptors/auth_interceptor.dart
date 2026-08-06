import 'package:dio/dio.dart';

/// 鉴权拦截器（预留）
///
/// 职责说明：
/// - 为需要鉴权的请求注入 Authorization Header
/// - 处理 401 响应：刷新 token 或重定向至登录页
/// - 当前阶段为预留实现，仅透传请求
///
/// 设计模式：责任链节点
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // TODO: 从 LocalStorage 读取 token，注入到 Header
    // final token = await localStorage.read(StorageConstants.userToken);
    // if (token != null && token.isNotEmpty) {
    //   options.headers['Authorization'] = 'Bearer $token';
    // }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // TODO: 401 处理 - 刷新 token 或跳转登录页
    // if (err.response?.statusCode == 401) {
    //   // 触发 token 刷新或登出
    // }
    handler.next(err);
  }
}
