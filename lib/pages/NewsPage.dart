import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NewsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NewsPageState();
  }
}

class NewsPageState extends State<NewsPage> with AutomaticKeepAliveClientMixin {
  ScrollController _scrollController = new ScrollController();
  Dio _dio = new Dio();
  int _page = 1;
  int _size = 10;
  int _beLoad = 0;
  var posts = [];

  // ignore: non_constant_identifier_names
  var TU_KU_API_URL =
      "http://beautygallery.file.alimmdn.com/v4/list_1/album_data/total_page_";

  @override
  void initState() {
    super.initState();
    print("NewsPageState---> initState");
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    return RefreshIndicator(
      onRefresh: _refreshData,
      child: StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          primary: false,
          itemBuilder: null,
          staggeredTileBuilder: (index) => StaggeredTile.fit(2)),
    );
  }

  @override
  bool get wantKeepAlive => true;

  //下拉刷新
  Future<Null> _refreshData() async {
    _page = 1;
    _getPostData(false);
  }

  //上拉加载
  Future<Null> _addMoreData() async {
    _page++;
    _getPostData(true);
  }

  void _getPostData(bool _isRefresh) async {
    var response = await _dio.get("$TU_KU_API_URL$_page");
    var result = response.data;
    print(result);
    setState(() {
      if (_isRefresh) {
        posts.clear();
      }
      posts.addAll(result);
    });
  }
}
