import 'package:flutter/material.dart';
import 'package:modular_posts/models/post.dart';
import 'package:modular_posts/ui/post_footer.dart';
import 'package:modular_posts/utils/capitalize.dart';

class PostWidget extends StatefulWidget {
  final PostModel post;
  final Function getComments;

  PostWidget({@required this.post, @required this.getComments});
  @override
  _PostState createState() => _PostState();
}

// TODO: show original poster name
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
                  Text(widget.post.date,
                      style: Theme.of(context).textTheme.caption),
                  SizedBox(height: 4),
                  Text(widget.post.time,
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
                    widget.post.title.capitalize,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(height: 8),
                  Text(
                    widget.post.body.capitalize,
                    maxLines: 15,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  FutureBuilder(
                      // Could be a StreamBuilder
                      future: widget.getComments(widget.post),
                      builder: (context, snapshot) {
                        switch (snapshot.connectionState) {
                          case ConnectionState.none:
                          case ConnectionState.waiting:
                            return PostFooter(
                              likes: widget.post.likes,
                              comments: 0,
                            );
                            break;
                          default:
                            if (snapshot.hasError)
                              return PostFooter(
                                likes: 0,
                                comments: 0,
                              );
                            else
                              return PostFooter(
                                  likes: widget.post.likes,
                                  comments: widget.post.comments.length,
                                  liked: widget.post.like);
                        }
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
