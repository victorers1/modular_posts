import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class UserAvatar extends StatelessWidget {
  final int userID;
  UserAvatar({this.userID = 42});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 25,
      child: ClipOval(
        child: Image.network(
          'https://api.adorable.io/avatars/100$userID.png',
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadProgress) {
            if (loadProgress == null)
              return child;
            else
              return Center(
                child: CircularProgressIndicator(
                  value: loadProgress.expectedTotalBytes != null
                      ? loadProgress.cumulativeBytesLoaded /
                          loadProgress.expectedTotalBytes
                      : null,
                ),
              );
          },
        ),
      ),
    );
  }
}

class UserAvatarShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[400],
      highlightColor: Colors.white,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 25,
      ),
    );
  }
}
