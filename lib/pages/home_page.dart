import 'package:flutter/material.dart';
import 'package:blog/widgets/drawer_widget.dart';
import 'package:blog/config/assets.dart';
import 'package:blog/config/constants.dart';

import 'dart:html' as html;

class HomePage extends StatefulWidget {
  static String id = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 180,
                  backgroundImage: Image.asset(Assets.avatar).image,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Vito Minheere',
                  textScaleFactor: 4,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Google Cloud, Python, Flutter \n Powerlifting, Motorcycles.',
                  style: Theme.of(context).textTheme.caption,
                  textScaleFactor: 2,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Professional',
                  style: Theme.of(context).textTheme.caption,
                  textScaleFactor: 2,
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.github)),
                      label: Text('Github'),
                      onPressed: () =>
                          html.window.open(Constants.PROFILE_GITHUB, 'blog'),
                    ),
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.linkedin)),
                      label: Text('Linkedin'),
                      onPressed: () =>
                          html.window.open(Constants.PROFILE_LINKEDIN, 'blog'),
                    ),
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.itchio)),
                      label: Text('Itch.io'),
                      onPressed: () =>
                          html.window.open(Constants.PROFILE_ITCHIO, 'blog'),
                    )
                  ],
                ),
                Text(
                  'Personal',
                  style: Theme.of(context).textTheme.caption,
                  textScaleFactor: 2,
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.instagram)),
                      label: Text('Instagram'),
                      onPressed: () =>
                          html.window.open(Constants.PROFILE_INSTAGRAM, 'blog'),
                    ),
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.strava)),
                      label: Text('Strava'),
                      onPressed: () =>
                          html.window.open(Constants.PROFILE_STRAVA, 'blog'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      drawer: SideDrawer(),
    );
  }
}
