import 'package:flutter/material.dart';
import 'package:flutter_app/test/tabs/First.dart';
import 'package:flutter_app/test/tabs/Second.dart';
import 'package:flutter_app/test/tabs/Third.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  TabBar getTabBar() {
    return TabBar(tabs: <Tab>[
      Tab(
        icon: Icon(Icons.favorite),
      ),
      Tab(
        icon: Icon(Icons.adb),
      ),
      Tab(
        icon: Icon(Icons.airport_shuttle),
      ),
    ], controller: _tabController);
  }

  TabBarView getTabBarView(var tabs) {
    return TabBarView(
      children: tabs,
      controller: _tabController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("using tabs"),
        bottom: getTabBar(),
      ),
      body: getTabBarView(<Widget>[First(), Second(), Third()]),
    );
  }
}
