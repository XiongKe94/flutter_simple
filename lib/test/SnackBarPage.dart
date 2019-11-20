import 'package:flutter/material.dart';

class SnackBarPage extends StatefulWidget {
  @override
  _SnackBarPageState createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SnackBarPage")),
      body: SnackBarButton(),
    );
  }
}

class SnackBarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text("Show SnackBar"),
        onPressed: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("Hello! I am SnackBar!"),
            duration: Duration(seconds: 3),
            action: SnackBarAction(
              label: "Hit Me Action",
              onPressed: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("Hello! I am shown becoz you pressed Action :")));
              },
            ),
          ));
        });
  }
}
