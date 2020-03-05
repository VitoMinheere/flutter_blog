import 'package:flutter/material.dart';
import 'package:blog/widgets/drawer_widget.dart';
import 'package:blog/config/assets.dart';

class TechPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
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
                  'Tech',
                  textScaleFactor: 4,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Laptop: Thinkpad T440p\n Os: Arch Linux\n Phone: Mi a2 Lite',
                  style: Theme.of(context).textTheme.caption,
                  textScaleFactor: 2,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Stack',
                  style: Theme.of(context).textTheme.caption,
                  textScaleFactor: 2,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Languages: Python, Typescript, Dart, Flutter\n Hosting: Google Cloud Platform \n Data: Pandas, Dataflow, Bigquery',
                  style: Theme.of(context).textTheme.caption,
                  textScaleFactor: 2,
                  textAlign: TextAlign.center,
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
