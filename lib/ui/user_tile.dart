import 'package:flutter/material.dart';
import 'package:modular_posts/ui/user_avatar.dart';
import 'package:shimmer/shimmer.dart';

/// User Tile
///
/// Shows photo, name and email
class UserTile extends StatelessWidget {
  final int userID;
  final String name;
  final String email;
  UserTile({@required this.name, @required this.email, this.userID});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: UserAvatar(userID: userID),
      title: Text(name, style: Theme.of(context).textTheme.headline6),
      subtitle: Text(email, style: Theme.of(context).textTheme.bodyText2),
    );
  }
}

class UserTileShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[400],
      highlightColor: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 16, top: 9, bottom: 9),
            height: 50,
            width: 50,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 150,
                height: 20,
                color: Colors.white,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 2.0),
              ),
              Container(
                width: 150,
                height: 14,
                color: Colors.white,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 2.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/**
 * Column(
              children: <Widget>[
                Container(height: 20, width: 50), // headline6
                Container(
                  height: 14,
                  width: 40,
                ), // bodyText2
              ],
            )
 */

/**
 *  ListTile(
        contentPadding: EdgeInsets.zero,
        leading: UserAvatar(),
        title: Container(height: 20), // headline6
        subtitle: Container(height: 14), // bodyText2,
      ),
 */
