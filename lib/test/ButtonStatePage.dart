import 'package:flutter/material.dart';

class ButtonStatePage extends StatefulWidget {
  @override
  _ButtonStatePageState createState() => _ButtonStatePageState();
}

class _ButtonStatePageState extends State<ButtonStatePage> {
  int counter = 0;
  List<String> strings = ['Flutter', 'Android', 'Java', 'C++', 'Php'];
  String displayString = 'Hello Word';

  void onPressOfButton() {
    setState(() {
      displayString = strings[counter];
      counter = counter < 4 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("测试Button状态"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(displayString, style: TextStyle(fontSize: 40.0)),
              Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed: onPressOfButton,
                child: Text(
                  "Press me",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
