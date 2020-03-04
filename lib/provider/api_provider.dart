import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:blog/config/constants.dart';
import 'package:blog/models/blog_model.dart';
import 'package:blog/models/job_model.dart';
import 'package:http/http.dart' as http;

class ApiProvider {
  // TODO Load the blogs from firebase
  Future<List<Blog>> getBlogs() async {
    var results = [
      Blog(id: "1", title: "Test", subtitle: "Test subtitle"),
      Blog(id: "2", title: "Test", subtitle: "Test subtitle")
    ];
    return results;
  }

  Future<List<Job>> getJobs() async {
    var results = [
      Job(
        title: "Data engineer",
        summary: "Job summary",
        startDate: DateTime(2019),
        endDate: DateTime(2020),
        isCurrent: false,
        company: Company(
          name: "CTS",
          ticker:
              'https://media-exp1.licdn.com/dms/image/C4D0BAQGt1CafpL1eyA/company-logo_200_200/0?e=2159024400&v=beta&t=7hXrPCxQBV52pdHVxvE1ixs3kVWx9wAukt-JnOQZ7gA',
        ),
      ),
      Job(
        title: "Python developer",
        summary: "Job summary",
        startDate: DateTime(2018),
        endDate: DateTime(2019),
        isCurrent: false,
        company: Company(
          name: "Energyworx",
          ticker:
              'https://henq.vc/wp-content/uploads/2019/06/Henq_portfolio_energyworx_logo.png',
        ),
      ),
    ];
    return results;
  }
}
// Future<List<Blog>> getBlogs() async {
//   final response = await http.get(Constants.BLOG_API);
//   if (response.statusCode == 200) {
//     List blogs = json.decode(utf8.decode(response.bodyBytes))['response'];
//     var results = blogs.map((blog) => Blog.fromJson(blog)).toList();
//     return results;
//   } else {
//     return null;
//   }
// }
