import 'package:flutter/material.dart';
import 'package:modular_posts/models/post.dart';
import 'package:modular_posts/ui/post_footer.dart';
import 'package:modular_posts/utils/capitalize.dart';

class PostWidget extends StatefulWidget {
  final PostModel p;

  PostWidget(this.p);
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<PostWidget> {
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
                children: <Widget>[
                  CircleAvatar(radius: 25),
                  SizedBox(height: 16),
                  Text(widget.p.date,
                      style: Theme.of(context).textTheme.caption),
                  SizedBox(height: 4),
                  Text(widget.p.time,
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
                    widget.p.title.capitalize,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(height: 8),
                  Text(
                    widget.p.body.capitalize,
                    maxLines: 15,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  PostFooter(
                    likes: widget.p.likes,
                    comments: widget.p.comments.length,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
