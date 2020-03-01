import 'package:flutter/material.dart';
import 'package:blog/tabs/blog_tab.dart';
import 'package:blog/tabs/tech_tab.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  void initState() {
    super.initState();
  }

  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    //AboutTab(),
    BlogTab(),
    // ResumeTab(),
    TechTab(),
    //ProjectsTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('About'),
            onTap: () {
              print("tapped");
            },
          ),
          ListTile(
              leading: Icon(Icons.chrome_reader_mode),
              title: Text('Blog'),
              onTap: () {
                setState(() => _selectedIndex = 0);
              }),
          ListTile(
            leading: Icon(Icons.insert_drive_file),
            title: Text('Resume'),
          ),
          ListTile(
              leading: Icon(Icons.laptop_chromebook),
              title: Text('Tech'),
              onTap: () {
                setState(() => _selectedIndex = 1);
              }),
          ListTile(),
        ],
      ),
    );
  }
}

// class SideBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         children: <Widget>[
//           ListTile(
//             leading: Icon(Icons.account_circle),
//             title: Text('About'),
//             onTap: () {
//               print("tapped");
//             },
//           ),
//           ListTile(
//               leading: Icon(Icons.chrome_reader_mode),
//               title: Text('Blog'),
//               onTap: () {
//                 setState(() => _selectedIndex = 2);
//               }),
//           ListTile(
//             leading: Icon(Icons.insert_drive_file),
//             title: Text('Resume'),
//           ),
//           ListTile(
//             leading: Icon(Icons.laptop_chromebook),
//             title: Text('Tech'),
//           ),
//         ],
//       ),
//     );
//   }
// }
