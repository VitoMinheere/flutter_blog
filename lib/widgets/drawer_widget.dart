import 'package:blog/pages/tech_page.dart';
import 'package:flutter/material.dart';
import 'package:blog/pages/blog_page.dart';
import 'package:blog/pages/resume_page.dart';
import 'package:blog/pages/home_page.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('About'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(Icons.chrome_reader_mode),
            title: Text('Blog'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlogPage(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(Icons.insert_drive_file),
            title: Text('Resume'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResumePage(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(Icons.laptop_chromebook),
            title: Text('Tech'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TechPage(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
