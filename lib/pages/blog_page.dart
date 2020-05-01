import 'package:flutter/material.dart';

import 'package:blog/widgets/drawer_widget.dart';
import 'package:blog/widgets/blog_widget.dart';
import 'package:blog/models/blog_model.dart';
import 'package:blog/provider/api_provider.dart';
import 'package:blog/widgets/responsive_widget.dart';

class BlogPage extends StatefulWidget {
  static String id = 'Blog';

  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  ApiProvider _apiProvider = ApiProvider();
  List<Blog> _blogs = [];
  bool _loadingData = true;
  bool _showError = false;

  @override
  void initState() {
    super.initState();
    loadBlogs();
  }

  @override
  Widget build(BuildContext context) {
    if (_loadingData)
      return Center(
        child: CircularProgressIndicator(),
      );
    if (_showError) {
      return Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Something went wrong',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          RaisedButton(
            child: Text(
              'Retry',
              style: Theme.of(context)
                  .textTheme
                  .button
                  .copyWith(color: Colors.white),
            ),
            elevation: 0.0,
            onPressed: loadBlogs,
          )
        ],
      ));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Blogs'),
      ),
      drawer: SideDrawer(),
      body: ResponsiveWidget(
        largeScreen: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 2,
              child: blogList(),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],
        ),
        smallScreen: blogList(),
      ),
    );
  }

  Widget blogList() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListView.builder(
              itemCount: _blogs.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) =>
                  BlogWidget(_blogs[index], index, _blogs.length),
              reverse: true,
            ),
          ],
        ),
      ),
    );
  }

  void loadBlogs() async {
    setState(() {
      _loadingData = true;
      _showError = false;
    });
    final result = await _apiProvider.getBlogs();
    setState(() {
      if (result == null) {
        _showError = true;
        _loadingData = false;
      } else {
        _blogs = result;
        _showError = false;
        _loadingData = false;
      }
    });
  }
}
