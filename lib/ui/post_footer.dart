import 'package:flutter/material.dart';

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
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_border),
          color: Colors.red,
          tooltip: 'Favoritar',
        ),
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(Icons.comment),
          label: Text('Comentários'),
        ),
      ],
    );
  }
}
