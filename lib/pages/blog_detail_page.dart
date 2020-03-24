import 'package:flutter/material.dart';
import 'package:blog/widgets/drawer_widget.dart';
import 'package:blog/models/blog_model.dart';
import 'package:blog/config/assets.dart';

class BlogDetailPage extends StatefulWidget {
  static String id = 'BlogDetail';

  Blog blog;
  BlogDetailPage({this.blog});

  @override
  _BlogDetailPageState createState() => _BlogDetailPageState();
}

class _BlogDetailPageState extends State<BlogDetailPage> {
  @override
  Widget build(BuildContext context) {
    Blog blog = widget.blog;
    print(blog);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 100,
                  backgroundImage: Image.asset(Assets.avatar).image,
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
              ],
            ),
          ),
        ),
      ),
      drawer: SideDrawer(),
    );
  }
}
