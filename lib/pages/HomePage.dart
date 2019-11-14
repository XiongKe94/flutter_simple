import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  List<int> items = List.generate(16, (i) => i);
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    print("HomePageState---> initState");
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {}
      print("loadMore");
      _getMoreData();
    });
  }

  Future<Null> _handlerRefresh() async {
    await Future.delayed(Duration(seconds: 3), () {
      print("_handlerRefesh");
      setState(() {
        items.clear();
        items = List.generate(30, (i) => i);
        return null;
      });
    });
  }

  Future _getMoreData() async {
    List<int> newEntries =
        await mokeHttpRequest(items.length, items.length + 10);
    setState(() {
      items.addAll(newEntries);
    });
  }

  Future<List<int>> mokeHttpRequest(int from, int to) async {
    return Future.delayed(Duration(seconds: 3), () {
      return List.generate(to - from, (i) => i + from);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new RefreshIndicator(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text("Index $index"));
            },
            controller: _scrollController,
          ),
          onRefresh: _handlerRefresh),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
