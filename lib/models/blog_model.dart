import 'package:cloud_firestore/cloud_firestore.dart';

class Blog {
  String id;
  String title;
  String subtitle;
  String fileName;
  String body;
  Timestamp createdAt;
  String previewImage;

  Blog({
    this.id,
    this.title,
    this.subtitle,
    this.fileName,
    this.body,
    this.createdAt,
    this.previewImage = 'assets/wall.png',
  });
}
