import 'package:flutter/material.dart';
import 'package:blog/models/job_model.dart';

class ResumeWidget extends StatefulWidget {
  final job;
  final index;
  final length;
  bool _showSummary;

  ResumeWidget(this.job, this.index, this.length);

  @override
  _ResumeWidgetState createState() => _ResumeWidgetState();
}

class _ResumeWidgetState extends State<ResumeWidget> {
  @override
  void initState() {
    super.initState();
    widget._showSummary = false;
  }

  void showSummary() {
    setState(() {
      widget._showSummary = !widget._showSummary;
      print(widget._showSummary);
    });
  }

  @override
  Widget build(BuildContext context) {
    int index = widget.index;
    int length = widget.length;
    bool _showSummary = widget._showSummary;
    Job job = widget.job;

    double topBottomPadding = (index == 0 || index == length - 1) ? 16.0 : 8.0;
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      curve: Curves.easeIn,
      child: InkWell(
        onTap: () {
          print("Clicked ${job.title} card");
          showSummary();
        },
        child: Card(
          margin: EdgeInsets.fromLTRB(
              16.0, topBottomPadding, 16.0, topBottomPadding),
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.network(job.company.ticker),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      job.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Visibility(
                    visible: _showSummary,
                    child: Text(job.summary,
                        style: Theme.of(context).textTheme.subtitle2)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
