import 'package:flutter/material.dart';
import 'package:blog/tabs/blog_tab.dart';
import 'package:blog/widgets/drawer_widget.dart';

class BlogPage extends StatefulWidget {
  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    // AboutTab(),
    BlogTab(),
    // ResumeTab(),
    // TechTab(),
    //ProjectsTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: SideDrawer(),
      body: Center(
        child: tabWidgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('About'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chrome_reader_mode),
            title: Text('Blog'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.laptop_chromebook),
            title: Text('Tech'),
          )
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        selectedItemColor: Theme.of(context).accentColor,
      ),
    );
  }
}
