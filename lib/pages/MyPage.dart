import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("My Page-"),
        ),
      ),
      floatingActionButton: Theme(
          data: Theme.of(context)
              .copyWith(accentColor: Theme.of(context).accentColor),
          child: FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.add),
          )),
    );
  }
}
