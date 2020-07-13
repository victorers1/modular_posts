import 'package:flutter/material.dart';
import 'package:modular_posts/models/user.dart';
import 'package:modular_posts/ui/indicator.dart';
import 'package:modular_posts/ui/user_avatar.dart';
import 'package:shimmer/shimmer.dart';

class FlexibleAppBar extends StatelessWidget {
  final UserModel user;
  FlexibleAppBar({@required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 62),
          UserAvatar(userID: user.id, radius: 50),
          SizedBox(height: 30),
          Text(
            user.name,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            user.email,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                .copyWith(color: Colors.white),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IndicatorWidget(number: 1042, indicator: 'Posts'),
              IndicatorWidget(number: 1214, indicator: 'Seguidores'),
              IndicatorWidget(number: 1696, indicator: 'Seguindo'),
            ],
          )
        ],
      ),
    );
  }
}

class FlexisbleAppBarShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 80),
        Shimmer.fromColors(
          baseColor: Colors.grey[400],
          highlightColor: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              ),
              SizedBox(height: 30),
              Container(
                width: 150,
                height: 20,
                color: Colors.white,
              ),
              SizedBox(height: 8),
              Container(
                width: 150,
                height: 16,
                color: Colors.white,
              ),
              SizedBox(height: 25),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IndicatorWidget(number: 0, indicator: 'Posts'),
            IndicatorWidget(number: 0, indicator: 'Seguidores'),
            IndicatorWidget(number: 0, indicator: 'Seguindo'),
          ],
        )
      ],
    );
  }
}

/**
 * Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IndicatorWidget(number: 0, indicator: 'Posts'),
              IndicatorWidget(number: 0, indicator: 'Seguidores'),
              IndicatorWidget(number: 0, indicator: 'Seguindo'),
            ],
          )
 */
