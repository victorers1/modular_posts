import 'package:flutter/material.dart';
import 'package:modular_posts/ui/post.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Post(),
          Post(),
          Post(),
          Post(),
        ],
      ),
    );
  }
}
