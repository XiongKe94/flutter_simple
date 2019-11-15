import 'package:flutter/material.dart';

class LoadImagePage extends StatefulWidget {
  @override
  _LoadImagePageState createState() => _LoadImagePageState();
}

class _LoadImagePageState extends State<LoadImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Load local image"),
      ),
      body: Container(
        child: Center(
          child: Text(
            "Hello word!",
            style: TextStyle(color: Colors.white),
          ),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/ic_osc_logo.png"), fit: BoxFit.cover)),
      ),
    );
  }
}
