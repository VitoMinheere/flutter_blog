import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:blog/config/constants.dart';
import 'package:blog/config/assets.dart';
import 'package:blog/widgets/drawer_widget.dart';
import 'dart:html' as html;
import 'package:http/http.dart' as http;

class ResumePage extends StatelessWidget {
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
                Text(
                  'Resume',
                  textScaleFactor: 8,
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
                RaisedButton(
                  child: Text('Download .pdf'),
                  onPressed: () => html.window.open(Constants.RESUME_EN, 'pdf'),
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
