import 'package:flutter/material.dart';
import 'package:flutter_app/test/bn_tabs/FirstTab.dart';
import 'package:flutter_app/test/bn_tabs/SecondTab.dart';
import 'package:flutter_app/test/bn_tabs/ThirdTab.dart';

class BottomNavigationPage extends StatefulWidget {
  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage>
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Using Bottom Navigation Bar"),
      ),
      body: TabBarView(
        children: <Widget>[FirstTab(), SecondTab(), ThirdTab()],
        controller: _tabController,
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          tabs: <Tab>[
            Tab(icon: Icon(Icons.favorite)),
            Tab(icon: Icon(Icons.adb)),
            Tab(icon: Icon(Icons.airport_shuttle)),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
