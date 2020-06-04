import 'package:flutter/material.dart';

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
          DrawerRow(
            icon: Icons.account_circle,
            title: 'About',
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          DrawerRow(
            icon: Icons.chrome_reader_mode,
            title: 'Blog',
            onTap: () {
              Navigator.pushNamed(context, "/blog");
            },
          ),
          DrawerRow(
            icon: Icons.insert_drive_file,
            title: 'Resume',
            onTap: () {
              Navigator.pushNamed(context, "/resume");
            },
          ),
          // DrawerRow(
          //   icon: Icons.laptop_chromebook,
          //   title: 'Tech',
          //   onTap: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => TechPage(),
          //         ));
          //   },
          // ),
          DrawerRow(
            icon: Icons.important_devices,
            title: 'Projects',
            onTap: () {
              Navigator.pushNamed(context, "/projects");
            },
          ),
        ],
      ),
    );
  }
}

class DrawerRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  DrawerRow({this.icon, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      child: InkWell(
        onTap: onTap,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.fromLTRB(23.0, 20.0, 24.0, 24.0),
                  child: Icon(icon, color: Colors.grey[800], size: 24.0)),
              Padding(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                padding: const EdgeInsets.fromLTRB(23.0, 20.0, 24.0, 24.0),
              )
            ]),
      ),
    );
  }
}
