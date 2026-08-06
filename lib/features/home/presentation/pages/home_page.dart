import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'message_wall_page.dart';
import 'photo_wall_page.dart';

/// 首页（Tab 容器）
///
/// 职责说明：
/// - 顶层 Tab 容器，承载"照片墙 / 留言墙"两个子页
/// - 对应路由 `/`
/// - 设计稿：App端设计-首页.jpg
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('照片墙'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Tab>[
            Tab(text: '照片墙'),
            Tab(text: '留言墙'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[PhotoWallPage(), MessageWallPage()],
      ),
      // TODO: 添加跳转发布页的浮动按钮
    );
  }
}
