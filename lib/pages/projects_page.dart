import 'package:flutter/material.dart';
import 'package:blog/config/projects.dart';
import 'package:blog/widgets/responsive_widget.dart';
import 'package:blog/widgets/project_widget.dart';

import 'package:blog/widgets/drawer_widget.dart';

class ProjectsPage extends StatelessWidget {
  static String id = 'Projects';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects'),
      ),
      body: ResponsiveWidget(
        largeScreen: GridView.count(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.3),
          children: List.generate(
              projects.length, (index) => ProjectWidget(projects[index], 0)),
        ),
        smallScreen: ListView.builder(
          itemCount: projects.length,
          itemBuilder: (context, index) => ProjectWidget(
            projects[index],
            (index == projects.length - 1 ? 16.0 : 0),
          ),
        ),
      ),
      drawer: SideDrawer(),
    );
  }
}
