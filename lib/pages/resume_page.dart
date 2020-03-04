import 'package:blog/widgets/resume_widget.dart';
import 'package:flutter/material.dart';

import 'package:blog/config/constants.dart';
import 'package:blog/widgets/responsive_widget.dart';
import 'package:blog/widgets/drawer_widget.dart';
import 'package:blog/models/job_model.dart';
import 'package:blog/provider/api_provider.dart';
import 'dart:html' as html;

class ResumePage extends StatefulWidget {
  @override
  _ResumePageState createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  ApiProvider _apiProvider = ApiProvider();
  List<Job> _jobs = [];
  bool _loadingData = true;
  bool _showError = false;

  @override
  void initState() {
    super.initState();
    loadJobs();
  }

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
                  'Experience',
                  textScaleFactor: 8,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 40,
                ),
                RaisedButton(
                  child: Text('Download .pdf'),
                  onPressed: () => html.window.open(Constants.RESUME_EN, 'pdf'),
                ),
                ResponsiveWidget(
                  largeScreen: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 2,
                        child: jobList(),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      )
                    ],
                  ),
                  smallScreen: jobList(),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: SideDrawer(),
    );
  }

  Widget jobList() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListView.builder(
              itemCount: _jobs.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) =>
                  ResumeWidget(_jobs[index], index, _jobs.length),
            ),
          ],
        ),
      ),
    );
  }

  void loadJobs() async {
    setState(() {
      _loadingData = true;
      _showError = false;
    });
    final result = await _apiProvider.getJobs();
    print(result);
    setState(() {
      if (result == null) {
        _showError = true;
        _loadingData = false;
      } else {
        _jobs = result;
        _showError = false;
        _loadingData = false;
      }
    });
  }
}
