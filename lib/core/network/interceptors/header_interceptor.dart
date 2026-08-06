import 'package:dio/dio.dart';

/// 公共请求头拦截器
///
/// 职责说明：
/// - 为所有请求注入公共 Header（平台标识、版本号、语言等）
/// - 不处理鉴权（由 [AuthInterceptor] 负责）
///
/// 设计模式：责任链节点
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class HeaderInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // TODO: 注入平台 / 版本 / 语言 等公共头
    options.headers['X-Platform'] = _platformName();
    options.headers['X-App-Version'] = '1.0.0';
    options.headers['Accept-Language'] = 'zh-CN,zh;q=0.9,en;q=0.8';
    handler.next(options);
  }

  /// 获取平台名称
  String _platformName() {
    // TODO: 通过 dart:io Platform 区分 android / ios / web
    return 'flutter';
  }
}
