import 'dart:math';

import 'package:flutter/material.dart';
import 'package:modular_posts/models/comment.dart';

/// Comment Widget
///
/// Shows email and message.
/// Comment API has no author ID.
class CommentWidget extends StatefulWidget {
  final CommentModel comment;
  CommentWidget({@required this.comment});

  @override
  _CommentWidgetState createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  bool like = false;
  int likes = Random().nextInt(42);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,

      // leading: CircleAvatar(
      //     radius: 10,
      //     backgroundImage:
      //         NetworkImage('https://api.adorable.io/avatars/100$userID.png')),
      title: Text(widget.comment.email,
          style: Theme.of(context).textTheme.bodyText1),
      subtitle: Text(
        widget.comment.body,
        style:
            Theme.of(context).textTheme.caption.copyWith(color: Colors.black),
      ),
      trailing: FlatButton.icon(
        onPressed: () {
          setState(() {
            likes += like ? -1 : 1;
            like = !like;
          });
        },
        shape: CircleBorder(),
        textColor: Colors.redAccent,
        icon: Icon(like ? Icons.favorite : Icons.favorite_border),
        label: Text(likes.toString()),
      ),
    );
  }
}
