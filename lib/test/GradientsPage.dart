import 'package:flutter/material.dart';

class GradientsPage extends StatefulWidget {
  @override
  _GradientsPageState createState() => _GradientsPageState();
}

class _GradientsPageState extends State<GradientsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "GradientsPage",
        style: TextStyle(color: Colors.white),
      )),
      body: Container(
        child: Center(
          child: Text(
            "Hello World!",
            style: TextStyle(color: Colors.white),
          ),
        ),
        decoration: BoxDecoration(gradient: getCustomGradient()),
      ),
    );
  }

  LinearGradient getCustomGradient() {
    return LinearGradient(
        colors: [Colors.pink, Colors.blueAccent],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(0.6, 0.0),
        stops: [0.0, 0.6],
        tileMode: TileMode.clamp);
  }
}
