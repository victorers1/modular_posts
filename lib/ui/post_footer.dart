import 'package:flutter/material.dart';

/// Post Footer
///
/// Contains single post controller buttons (e.g. like and see comments).
/// Notifies parent widget if any button was pressed through VoidCallbacks.
class PostFooter extends StatelessWidget {
  final int likes;
  final int comments;
  final bool isLiked;
  final VoidCallback onLikePressed;
  final VoidCallback onCommentPressed;

  PostFooter({
    @required this.likes,
    @required this.comments,
    this.onLikePressed,
    this.onCommentPressed,
    this.isLiked = false,
  });
  @override
  Widget build(BuildContext context) {
    print('building post footer');
    return ButtonBar(
      mainAxisSize: MainAxisSize.max,
      alignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FlatButton.icon(
          shape: CircleBorder(),
          icon: Icon(
            isLiked ? Icons.favorite : Icons.favorite_border,
            color: Colors.red,
          ),
          label: Text(
            likes.toString(),
            style: TextStyle(color: Colors.red),
          ),
          onPressed: onLikePressed,
        ),
        FlatButton.icon(
          onPressed: onCommentPressed,
          icon: Icon(Icons.comment),
          label: Text(
            comments.toString(),
          ),
          shape: CircleBorder(),
        ),
      ],
    );
  }
}
