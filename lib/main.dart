import 'package:blog/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'package:blog/pages/blog_page.dart';
import 'package:blog/pages/blog_detail_page.dart';
import 'package:blog/pages/home_page.dart';
import 'package:blog/pages/resume_page.dart';
import 'package:blog/pages/tech_page.dart';
import 'package:blog/pages/projects_page.dart';

import 'config/themes.dart';

class FluroRouter {
  static Router router = Router();

  static Handler _blogDetailHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          BlogDetailPage(blogId: params['id'][0]));

  static Handler _homeHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          HomePage());

  static Handler _blogHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          BlogPage());

  static Handler _projectsHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ProjectsPage());

  static void setupRouter() {
    router.define(
      '/',
      handler: _homeHandler,
    );
    router.define(
      '/blog',
      handler: _blogHandler,
    );
    router.define(
      '/blog/:id',
      handler: _blogDetailHandler,
    );
    router.define(
      '/projects',
      handler: _projectsHandler,
    );
  }
}

void main() {
  FluroRouter.setupRouter();
  runApp(MyApp());
}

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
      onGenerateRoute: FluroRouter.router.generator,
      // routes: {
      //   HomePage.id: (context) => HomePage(),
      //   //TechPage.id: (context) => TechPage(),
      //   BlogPage.id: (context) => BlogPage(),
      //   BlogDetailPage.id: (context) => BlogDetailPage(),
      //   // ResumePage.id: (context) => ResumePage(),
      //   ProjectsPage.id: (context) => ProjectsPage(),
      // },
    );
  }
}
