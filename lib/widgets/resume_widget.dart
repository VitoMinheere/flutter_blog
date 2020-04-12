import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
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

class _ResumeWidgetState extends State<ResumeWidget>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    widget._showSummary = false;
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 180),
    );

    _animation = new CurvedAnimation(
      parent: _controller,
      curve: new Interval(0.0, 1.0, curve: Curves.linear),
    );
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
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      curve: Curves.easeIn,
      child: InkWell(
        onTap: () {
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
                    Text(_showSummary.toString()),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                ScaleTransition(
                  scale: _animation,
                  alignment: FractionalOffset.center,
                  child: Visibility(
                    visible: _showSummary,
                    child: Container(
                      color: Colors.orange,
                      margin: EdgeInsets.only(right: 16.0),
                      child: Text(
                        job.summary,
                        style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Roboto',
                          color: Color(0xFF9E9E9E),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
