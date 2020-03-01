import 'dart:html' as html;

import 'package:blog/config/constants.dart';
import 'package:blog/config/assets.dart';
import 'package:blog/models/blog_model.dart';
import 'package:blog/provider/api_provider.dart';
import 'package:blog/widgets/blog_widget.dart';
import 'package:blog/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

class TechTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
