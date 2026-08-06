import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// 网络图片 Widget
///
/// 职责说明：
/// - 封装 cached_network_image，提供统一加载/错误占位
/// - 支持圆角、占位图、错误图
/// - 自动磁盘与内存缓存
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class NetworkImageWidget extends StatelessWidget {
  /// 图片 URL
  final String? url;

  /// 圆角半径
  final double radius;

  /// 宽度
  final double? width;

  /// 高度
  final double? height;

  /// BoxFit
  final BoxFit fit;

  const NetworkImageWidget({
    super.key,
    required this.url,
    this.radius = 0,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    if (url == null || url!.isEmpty) {
      return _placeholder(Icons.broken_image_outlined);
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: CachedNetworkImage(
        imageUrl: url!,
        width: width,
        height: height,
        fit: fit,
        placeholder: (BuildContext _, String _) => _placeholder(null),
        errorWidget: (BuildContext _, String _, Object _) =>
            _placeholder(Icons.broken_image_outlined),
      ),
    );
  }

  /// 占位 Widget
  Widget _placeholder(IconData? icon) {
    return Container(
      width: width,
      height: height,
      color: Colors.grey.shade200,
      alignment: Alignment.center,
      child: icon != null
          ? Icon(icon, color: Colors.grey)
          : const CircularProgressIndicator(strokeWidth: 2),
    );
  }
}
