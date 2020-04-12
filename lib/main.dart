import 'package:blog/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';

import 'package:blog/pages/blog_page.dart';
import 'package:blog/pages/blog_detail_page.dart';
import 'package:blog/pages/home_page.dart';
import 'package:blog/pages/resume_page.dart';
import 'package:blog/pages/tech_page.dart';
import 'package:blog/pages/projects_page.dart';

import 'config/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: BlogSite(),
    );
  }
}

class BlogSite extends StatelessWidget {
  const BlogSite({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Vito Minheere',
      theme: ThemeSwitcher.of(context).isDarkModeOn
          ? darkTheme(context)
          : lightTheme(context),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        TechPage.id: (context) => TechPage(),
        BlogPage.id: (context) => BlogPage(),
        BlogDetailPage.id: (context) => BlogDetailPage(),
        // ResumePage.id: (context) => ResumePage(),
        ProjectsPage.id: (context) => ProjectsPage(),
      },
    );
  }
}
