import 'api_exception.dart';

/// 统一 API 响应包装
///
/// 职责说明：
/// - 描述后端统一返回结构：{ code, message, data? }
/// - 提供 fromJson / isSuccess / toBusinessException 工具方法
/// - 配合 freezed 模型使用（实际数据载体由各 feature 的 model 定义）
///
/// 设计模式：泛型包装 + 工厂
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class ApiResponse<T> {
  /// 业务码（200 表示成功）
  final int code;

  /// 业务消息或数据数组（依接口而定）
  final dynamic message;

  /// 业务数据
  final T? data;

  /// 构造函数
  const ApiResponse({
    required this.code,
    required this.message,
    this.data,
  });

  /// 是否成功
  bool get isSuccess => code == 200;

  /// 从 JSON 构造（data 转换器由调用方提供）
  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic)? fromData,
  ) {
    return ApiResponse<T>(
      code: json['code'] as int? ?? -1,
      message: json['message'],
      data: fromData != null ? fromData(json['message']) : null,
    );
  }

  /// 转换为业务异常（当 isSuccess 为 false 时调用）
  ApiException toBusinessException() => ApiException.business(
        code,
        message: message?.toString(),
      );
}
