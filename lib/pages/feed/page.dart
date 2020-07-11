import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_posts/controllers/feed.dart';
import 'package:modular_posts/ui/post.dart';

class Feed extends StatelessWidget {
  final feedController = Modular.get<FeedController>();

  @override
  Widget build(BuildContext context) {
    feedController.getUsers();

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Post(),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Post(),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Post(),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Post(),
          ),
        ],
      ),
    );
  }
}
