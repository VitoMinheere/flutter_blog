import 'dart:convert';

import 'package:blog/config/constants.dart';
import 'package:blog/models/blog_model.dart';
import 'package:http/http.dart' as http;

class ApiProvider {
  // TODO Load the blogs from markdown files
  Future<List<Blog>> getBlogs() async {
    var results = [
      Blog(id: "1", title: "Test", subtitle: "Test subtitle"),
      Blog(id: "2", title: "Test", subtitle: "Test subtitle")
    ];
    return results;
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
  }
}
