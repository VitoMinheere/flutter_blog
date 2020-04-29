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
    });
  }

  @override
  Widget build(BuildContext context) {
    int index = widget.index;
    int length = widget.length;
    bool _showSummary = widget._showSummary;
    Job job = widget.job;

    double topBottomPadding = (index == 0 || index == length - 1) ? 16.0 : 8.0;
    return Container(
      child: InkWell(
        onTap: () {
          showSummary();
        },
        child: Card(
          margin: EdgeInsets.fromLTRB(
              16.0, topBottomPadding, 16.0, topBottomPadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Image.network(
                      job.company.ticker,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      job.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Visibility(
                visible: _showSummary,
                child: Container(
                  margin: EdgeInsets.only(right: 16.0),
                  child: Text(
                    job.summary,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
