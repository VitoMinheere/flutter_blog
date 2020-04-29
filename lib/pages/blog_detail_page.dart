import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'package:blog/widgets/drawer_widget.dart';
import 'package:blog/models/blog_model.dart';
import 'package:blog/provider/api_provider.dart';

class BlogDetailPage extends StatefulWidget {
  static String id = 'BlogDetail';

  final Blog blog;
  final int blogId;
  BlogDetailPage({this.blog, this.blogId});

  @override
  _BlogDetailPageState createState() => _BlogDetailPageState();
}

class _BlogDetailPageState extends State<BlogDetailPage> {
  ApiProvider _apiProvider = ApiProvider();
  Blog _blog;
  bool _loadingData = true;
  bool _showError = false;

  @override
  void initState() {
    super.initState();
    loadBlog();
  }

  void loadBlog() async {
    setState(() {
      _loadingData = true;
      _showError = false;
    });
    var blog = widget.blog;
    blog.body = await _apiProvider.getBlogBody(blog.fileName);
    setState(() {
      if (blog.body == null) {
        _showError = true;
        _loadingData = false;
      } else {
        _blog = blog;
        _showError = false;
        _loadingData = false;
      }
    });
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
            onPressed: loadBlog,
          )
        ],
      ));
    }
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 300.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(_blog.previewImage).image,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  _blog.title,
                  textScaleFactor: 4,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  _blog.subtitle,
                  textScaleFactor: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 800),
                    child: MarkdownBody(
                      data: _blog.body,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: SideDrawer(),
    );
  }
}
