import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesPage extends StatefulWidget {
  @override
  _SharedPreferencesPageState createState() => _SharedPreferencesPageState();
}

class _SharedPreferencesPageState extends State<SharedPreferencesPage> {
  var nameOfApp = "SharedPreferencesPage value";
  var counter = 0;
  var key = "counter";

  @override
  void initState() {
    super.initState();
    _loadSavedData();
  }

  _loadSavedData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      counter = (sharedPreferences.getInt(key) ?? 0);
    });
  }

  _onIncrementHit() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      counter = (sharedPreferences.getInt(key) ?? 0) + 1;
    });
    sharedPreferences.setInt(key, counter);
  }

  _onDecrementHit() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      counter = (sharedPreferences.getInt(key) ?? 0) - 1;
    });
    sharedPreferences.setInt(key, counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nameOfApp),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$counter',
                textScaleFactor: 10.0,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              RaisedButton(
                onPressed: _onIncrementHit,
                child: Text("On IncrementHit"),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed: _onDecrementHit,
                child: Text("On DecrementHit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
