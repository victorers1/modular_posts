import 'dart:math';
import 'package:modular_posts/models/comment.dart';
import 'package:modular_posts/models/user.dart';
import 'package:modular_posts/utils/rand_int.dart';

class PostModel {
  // JSON members
  int userId;
  int id;
  String title;
  String body;

  // Custom members
  UserModel user;
  String date;
  String time;
  int likes;
  bool like;
  List<CommentModel> comments;

  PostModel({this.userId, this.id, this.title, this.body});

  PostModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];

    date = 'Jul ${rand(31)}';
    time = '${rand(23)}:${rand(59)}';
    likes = Random().nextInt(42);
    like = false;
    comments = [];
    //user = null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }
}
