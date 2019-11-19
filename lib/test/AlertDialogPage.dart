import 'package:flutter/material.dart';

class AlertDialogPage extends StatefulWidget {
  @override
  _AlertDialogPageState createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Useing Alert Dialog"),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text("Click Show Alert Dialog"),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => _alertDialog);
            },
          ),
        ),
      ),
    );
  }

  AlertDialog _alertDialog = AlertDialog(
      content: Text("Hello Word!", style: TextStyle(fontSize: 30.0)));
}
