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

  static Handler _resumeHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ResumePage());

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
    router.define(
      '/resume',
      handler: _resumeHandler,
    );
  }
}

void main() {
  FluroRouter.setupRouter();
  runApp(BlogSite());
}

class BlogSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Vito Minheere',
      theme: darkTheme(context),
      // theme: ThemeData.dark().copyWith(
      //   primaryColor: Color(0xFF0A0E21),
      //   scaffoldBackgroundColor: Color(0xFF0A0E10),
      //   accentColor: Colors.purple,
      // ),
      onGenerateRoute: FluroRouter.router.generator,
    );
  }
}
