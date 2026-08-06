import 'package:flutter/material.dart';

/// 登录页（预留）
///
/// 职责说明：
/// - 登录注册页面后续会补齐，暂仅占位
/// - 路由：/login
/// - 设计稿：待补齐
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('登录')),
      body: const Center(
        child: Text('登录页 - 待实现'),
      ),
    );
  }
}
