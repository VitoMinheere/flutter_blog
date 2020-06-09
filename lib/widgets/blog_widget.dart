import 'package:flutter/material.dart';

class BlogWidget extends StatelessWidget {
  final blog;
  final index;
  final length;
  const BlogWidget(this.blog, this.index, this.length);

  @override
  Widget build(BuildContext context) {
    double topBottomPadding = (index == 0 || index == length - 1) ? 16.0 : 8.0;
    return InkWell(
      onTap: () {
        print(this.blog.id);
        print("/blog/${this.blog.id}");
        Navigator.pushNamed(
          context,
          "/blog/",
          arguments: {'id': this.blog.id, 'blog': this.blog},
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
            // side: BorderSide(color: Colors.grey, width: 2.0),
            borderRadius: BorderRadius.circular(4.0)),
        margin:
            EdgeInsets.fromLTRB(16.0, topBottomPadding, 16.0, topBottomPadding),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 16,
              ),
              Text(
                blog.title,
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                height: 8,
              ),
              Text(blog.subtitle, style: Theme.of(context).textTheme.subtitle2),
            ],
          ),
        ),
      ),
    );
  }
}
