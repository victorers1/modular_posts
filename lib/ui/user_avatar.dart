import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final int userID;
  UserAvatar({this.userID = 42});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(
          'https://api.adorable.io/avatars/100$userID.png',
        ));
  }
}
