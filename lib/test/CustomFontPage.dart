import 'package:flutter/material.dart';

class CusomFontPage extends StatefulWidget {
  @override
  _CusomFontPageState createState() => _CusomFontPageState();
}

class _CusomFontPageState extends State<CusomFontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Using Custom Fonts"),
      ),
      body: Container(
        child: Center(
          child: Text(
            "The quick brown fox jumps over the lazy dog",
            textAlign: TextAlign.center,
            style: getCutomFontTextStyle(),
          ),
        ),
      ),
    );
  }

  TextStyle getCutomFontTextStyle() {
    return const TextStyle(
        color: Colors.blueAccent,
        fontFamily: 'Pacifico',
        fontWeight: FontWeight.w400,
        fontSize: 36.0);
  }
}
