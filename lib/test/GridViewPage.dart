import 'package:flutter/material.dart';
import 'package:flutter_app/test/widget/MyGridView.dart';

class GridViewPage extends StatefulWidget {
  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("GridView Example!"),
        ),
        body: MyGridView().build(),
      ),
    );
  }
}
