import 'package:cloud_firestore/cloud_firestore.dart';

class Blog {
  int id;
  String title;
  String subtitle;
  String fileName;
  String body;
  Timestamp createdAt;

  Blog({
    this.id,
    this.title,
    this.subtitle,
    this.fileName,
    this.body,
    this.createdAt,
  });
}
