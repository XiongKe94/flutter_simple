import 'package:flutter/material.dart';

class EditTextPage extends StatefulWidget {
  @override
  _EditTextPageState createState() => _EditTextPageState();
}

class _EditTextPageState extends State<EditTextPage> {
  String results = "";
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Using EditText"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: "Enter text here"),
                onSubmitted: (String str) {
                  setState(() {
                    results = results + "\n" + str;
                    _controller.text = "";
                  });
                },
                controller: _controller,
              ),
              Text(results)
            ],
          ),
        ),
      ),
    );
  }
}
