import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DiscoverPageState();
  }
}

class DiscoverPageState extends State<DiscoverPage> {
  @override
  void initState() {
    super.initState();
    debugPrint("DiscoverPageState---> initState");
  }

  @override
  Widget build(BuildContext context) {
    return Text("DiscoverPage", textAlign: TextAlign.center);
  }
}
