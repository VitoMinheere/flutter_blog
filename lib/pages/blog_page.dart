import 'package:flutter/material.dart';
import 'package:blog/tabs/blog_tab.dart';

class BlogPage extends StatefulWidget {
  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    // AboutTab(),
    // BlogTab(),
    // ResumeTab(),
    // TechTab(),
    //ProjectsTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
