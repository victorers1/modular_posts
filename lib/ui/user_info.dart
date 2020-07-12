import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final String name;
  final String email;
  UserInfo({@required this.name, @required this.email});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          name,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Text(
          email,
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
