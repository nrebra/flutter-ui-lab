import 'package:flutter/material.dart';
import 'package:flutter_learn/101/icon_learn.dart';
import 'package:flutter_learn/101/image_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  @override
  late final TabController tabController;
  final double _notchedValue = 10;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: _MyTabViews.values.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          tabController.animateTo(_MyTabViews.home.index);
        },
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: _notchedValue,
        shape: const CircularNotchedRectangle(),
        child: _myTabBar(),
      ),
      appBar: AppBar(),
      body: _tabBarView(),
    );
  }

  TabBar _myTabBar() {
    return TabBar(
      padding: EdgeInsets.zero,
      controller: tabController,
      tabs: _MyTabViews.values.map((tab) => Tab(text: tab.name)).toList(),
    );
  }

  TabBarView _tabBarView() {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      controller: tabController,
      children: [ImageLaern(), IconLearnView(), ImageLaern(), IconLearnView()],
    );
  }
}

enum _MyTabViews { home, settings, favorite, profile }
