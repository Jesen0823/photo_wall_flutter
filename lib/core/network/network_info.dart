import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'network_info.g.dart';

/// 网络连接信息
///
/// 职责说明：
/// - 监听设备网络状态（WiFi / 移动数据 / 无网）
/// - 供 Repository 判断"缓存优先"策略是否触发
/// - 用于弱网环境用户体验优化
///
/// 设计模式：适配器（封装 connectivity_plus）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
abstract class NetworkInfo {
  /// 当前是否联网
  Future<bool> get isConnected;

  /// 网络状态流
  Stream<List<ConnectivityResult>> get onStatusChanged;
}

/// NetworkInfo 实现
class NetworkInfoImpl implements NetworkInfo {
  final Connectivity _connectivity;

  NetworkInfoImpl([Connectivity? connectivity])
    : _connectivity = connectivity ?? Connectivity();

  @override
  Future<bool> get isConnected async {
    final List<ConnectivityResult> results = await _connectivity
        .checkConnectivity();
    return results.any((r) => r != ConnectivityResult.none);
  }

  @override
  Stream<List<ConnectivityResult>> get onStatusChanged =>
      _connectivity.onConnectivityChanged;
}

/// NetworkInfo Provider
@Riverpod(keepAlive: true)
NetworkInfo networkInfo(Ref ref) => NetworkInfoImpl();
