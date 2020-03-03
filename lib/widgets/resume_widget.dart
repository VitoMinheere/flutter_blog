import 'package:flutter/material.dart';

class ResumeWidget extends StatelessWidget {
  final job;
  final index;
  final length;
  const ResumeWidget(this.job, this.index, this.length);

  @override
  Widget build(BuildContext context) {
    double topBottomPadding = (index == 0 || index == length - 1) ? 16.0 : 8.0;
    return InkWell(
      onTap: () => {},
      // TODO Show job.summary onTap
      child: Card(
        margin:
            EdgeInsets.fromLTRB(16.0, topBottomPadding, 16.0, topBottomPadding),
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
              Text(job.summary, style: Theme.of(context).textTheme.subtitle2),
            ],
          ),
        ),
      ),
    );
  }
}
