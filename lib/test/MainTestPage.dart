import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/MainTabPage.dart';
import 'package:flutter_app/test/AlertDialogPage.dart';
import 'package:flutter_app/test/ButtonStatePage.dart';
import 'package:flutter_app/test/CustomFontPage.dart';
import 'package:flutter_app/test/EditTextPage.dart';
import 'package:flutter_app/test/HttpUsingPage.dart';
import 'package:flutter_app/test/LoadImagePage.dart';
import 'package:flutter_app/test/LoadLocalJsonPage.dart';
import 'package:flutter_app/test/StepperPage.dart';
import 'package:flutter_app/test/ThemePage.dart';

import 'BottomNavigationPage.dart';
import 'TabsPage.dart';

class MainTestPage extends StatefulWidget {
  @override
  _MainTestPageState createState() => _MainTestPageState();
}

class _MainTestPageState extends State<MainTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter 测试demo"),
      ),
      body: Container(
        child: Center(
          child: new Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return ThemePage();
                  }));
                },
                child: Text("Theme 测试界面"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return MainTabPage();
                      }));
                    },
                    child: Text("MainTab 多Tab界面"),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return ButtonStatePage();
                  }));
                },
                child: Text("Button 点击状态更新Page"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return EditTextPage();
                  }));
                },
                child: Text("Edit TextPage"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return LoadImagePage();
                  }));
                },
                child: Text("加载本地图片"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return LoadLocalJsonPage();
                  }));
                },
                child: Text("加载本地JSON"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return HttpUsingPage();
                  }));
                },
                child: Text("Http Get 点击!"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return AlertDialogPage();
                  }));
                },
                child: Text("AlertDialog 点击!"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return StepperPage();
                  }));
                },
                child: Text("带有下一步界面"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return TabsPage();
                  }));
                },
                child: Text("多Tabs界面"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return BottomNavigationPage();
                  }));
                },
                child: Text("BottomNavigation界面"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return CusomFontPage();
                  }));
                },
                child: Text("CusomFont界面"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
