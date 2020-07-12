import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final int userID;
  final String name;
  final String email;
  UserTile({@required this.name, @required this.email, this.userID});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // dense: true,
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
          radius: 25,
          backgroundImage:
              NetworkImage('https://api.adorable.io/avatars/100$userID.png')),
      title: Text(name, style: Theme.of(context).textTheme.headline6),
      subtitle: Text(email, style: Theme.of(context).textTheme.bodyText2),
    );
  }
}
