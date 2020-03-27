import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'package:blog/widgets/drawer_widget.dart';
import 'package:blog/models/blog_model.dart';

class BlogDetailPage extends StatefulWidget {
  static String id = 'BlogDetail';

  final Blog blog;
  BlogDetailPage({this.blog});

  @override
  _BlogDetailPageState createState() => _BlogDetailPageState();
}

class _BlogDetailPageState extends State<BlogDetailPage> {
  @override
  Widget build(BuildContext context) {
    Blog blog = widget.blog;

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
                      image: Image.asset(blog.previewImage).image,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  blog.title,
                  textScaleFactor: 4,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  blog.subtitle,
                  textScaleFactor: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 800),
                    child: MarkdownBody(
                      data: blog.body,
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
