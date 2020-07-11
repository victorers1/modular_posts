import 'package:flutter/material.dart';

/// Post Footer
///
/// Contains single post controller buttons (e.g. like and see comments).
/// Notifies parent widget if any button was pressed through VoidCallbacks.
class PostFooter extends StatelessWidget {
  final int likes;
  final int comments;
  final bool liked;
  final VoidCallback onLikePressed;
  final VoidCallback onCommentPressed;

  PostFooter({
    @required this.likes,
    @required this.comments,
    this.onLikePressed,
    this.onCommentPressed,
    this.liked = false,
  });
  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      mainAxisSize: MainAxisSize.max,
      alignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FlatButton.icon(
          onPressed: onLikePressed,
          icon: Icon(
            liked ? Icons.favorite : Icons.favorite_border,
            color: Colors.red,
          ),
          label: Text(
            likes.toString(),
            style: TextStyle(color: Colors.red),
          ),
          splashColor: Colors.red[50],
        ),
        FlatButton.icon(
          onPressed: onCommentPressed,
          icon: Icon(Icons.comment),
          label: Text(
            comments.toString(),
          ),
        ),
      ],
    );
  }
}
