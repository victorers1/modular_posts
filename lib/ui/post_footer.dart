import 'dart:math';

import 'package:flutter/material.dart';
import 'package:modular_posts/utils/rand_int.dart';

class PostFooter extends StatefulWidget {
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
            rand(42),
            style: TextStyle(color: Colors.red),
          ),
        ),
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(Icons.comment),
          label: Text(
            Random().nextInt(42).toString(), // Do not apply zero padding
          ),
        ),
      ],
    );
  }
}
