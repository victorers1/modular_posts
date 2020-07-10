import 'package:flutter/material.dart';
import 'package:modular_posts/ui/post_footer.dart';
import 'package:modular_posts/utils/capitalize.dart';
import 'package:modular_posts/utils/pad.dart';
import 'dart:math';

import 'package:modular_posts/utils/rand_int.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16, bottom: 16),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(radius: 25),
                  SizedBox(height: 16),
                  Text('Jul ${rand(31)}',
                      style: Theme.of(context).textTheme.caption),
                  SizedBox(height: 4),
                  Text('${rand(23)}:${rand(59)}',
                      style: Theme.of(context).textTheme.caption),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.start, // TODO: test stretch
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'sunt aut facere repellat provident occaecati excepturi optio reprehenderit'
                        .capitalize,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto'
                        .capitalize,
                    maxLines: 15,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  PostFooter(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
