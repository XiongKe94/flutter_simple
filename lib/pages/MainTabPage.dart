import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/DiscoverPage.dart';
import 'package:flutter_app/pages/HomePage.dart';
import 'package:flutter_app/pages/MyPage.dart';
import 'package:flutter_app/pages/NewsPage.dart';

class MainTabPage extends StatefulWidget {
  MainTabPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainTabPageState createState() => _MainTabPageState();
}

class _MainTabPageState extends State<MainTabPage> {
  final appbarTitles = ['首页', '新闻', '发现', '我的'];
  final tabTextStyleSelected = TextStyle(color: const Color(0xff63ca6c));
  final tabTextStyleNormal = TextStyle(color: const Color(0xff969696));
  Color themeColor = Color(0xff63ca6c);
  int _tabIndex = 0;
  var tabImages;
  var pages;

  @override
  void initState() {
    super.initState();
    pages = <Widget>[HomePage(), NewsPage(), DiscoverPage(), MyPage()];
    if (tabImages == null) {
      tabImages = [
        [
          getTabImage('images/ic_nav_news_normal.png'),
          getTabImage('images/ic_nav_news_actived.png')
        ],
        [
          getTabImage('images/ic_nav_tweet_normal.png'),
          getTabImage('images/ic_nav_tweet_actived.png')
        ],
        [
          getTabImage('images/ic_nav_discover_normal.png'),
          getTabImage('images/ic_nav_discover_actived.png')
        ],
        [
          getTabImage('images/ic_nav_my_normal.png'),
          getTabImage('images/ic_nav_my_pressed.png')
        ]
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: themeColor),
      home: Scaffold(
        appBar: AppBar(
            title: Text(appbarTitles[_tabIndex],
                style: TextStyle(color: Colors.white)),
            iconTheme: IconThemeData(color: Colors.white)),
        body: IndexedStack(
          children: pages,
          index: _tabIndex,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: getTabIcon(0), title: getTabTitle(0)),
            BottomNavigationBarItem(icon: getTabIcon(1), title: getTabTitle(1)),
            BottomNavigationBarItem(icon: getTabIcon(2), title: getTabTitle(2)),
            BottomNavigationBarItem(icon: getTabIcon(3), title: getTabTitle(3))
          ],
          currentIndex: _tabIndex,
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
        ),
      ),
    );
  }

  Image getTabImage(path) {
    return Image.asset(path, width: 20.0, height: 20.0);
  }

  TextStyle getTextStyle(int selectIndex) {
    if (selectIndex == _tabIndex) {
      return tabTextStyleSelected;
    }
    return tabTextStyleNormal;
  }

  Text getTabTitle(int selectIndex) {
    return Text(appbarTitles[selectIndex], style: getTextStyle(selectIndex));
  }

  Image getTabIcon(int selectIndex) {
    if (selectIndex == _tabIndex) {
      return tabImages[selectIndex][1];
    }
    return tabImages[selectIndex][0];
  }
}
