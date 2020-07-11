import 'package:flutter/material.dart';

class PostFooter extends StatefulWidget {
  final int likes;
  final int comments;
  PostFooter({@required this.likes, @required this.comments});

  @override
  _PostFooterState createState() => _PostFooterState();
}

class _PostFooterState extends State<PostFooter> {
  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      mainAxisSize: MainAxisSize.max,
      alignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(Icons.favorite_border, color: Colors.red),
          label: Text(
            widget.likes.toString(),
            style: TextStyle(color: Colors.red),
          ),
          splashColor: Colors.red[50],
        ),
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(Icons.comment),
          label: Text(
            widget.comments.toString(),
          ),
        ),
      ],
    );
  }
}
