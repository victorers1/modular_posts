import 'package:flutter/material.dart';
import 'package:modular_posts/ui/post_footer.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: 25,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start, // TODO: test stretch
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Title'),
              Text('body'),
              PostFooter(),
            ],
          )
        ],
      ),
    );
  }
}
