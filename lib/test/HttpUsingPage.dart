import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpUsingPage extends StatefulWidget {
  @override
  _HttpUsingPageState createState() => _HttpUsingPageState();
}

class _HttpUsingPageState extends State<HttpUsingPage> {
  final String url = "https://swapi.co/api/people";
  List data;

  Future<String> getJsonData() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    print(response.body);
    setState(() {
      var dataConvertedToJson = json.decode(response.body);

      data = dataConvertedToJson['results'];
    });
    return "Successful";
  }

  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Retrieve JSON Data via HTTP GET"),
      ),
      // Create a Listview and load the data when available
      body: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Center(
                  child: Column(
                    // Stretch the cards in horizontal axis
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Card(
                        child: Container(
                          child: Text(
                            // Read the name field value and set it in the Text widget
                            data[index]['name'],
                            // set some style to text
                            style: TextStyle(
                                fontSize: 20.0, color: Colors.lightBlueAccent),
                          ),
                          // added padding
                          padding: const EdgeInsets.all(15.0),
                        ),
                      )
                    ],
                  )),
            );
          }),
    );
  }
}
