import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:modular_posts/controllers/post_controller.dart';
import 'package:modular_posts/ui/post_footer.dart';
import 'package:modular_posts/ui/user_avatar.dart';
import 'package:modular_posts/utils/capitalize.dart';

class PostWidget extends StatefulWidget {
  final PostController postController;

  PostWidget({@required this.postController});
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
                  UserAvatar(userID: widget.postController.post.userId),
                  SizedBox(height: 16),
                  Text(widget.postController.post.date,
                      style: Theme.of(context).textTheme.caption),
                  SizedBox(height: 4),
                  Text(widget.postController.post.time,
                      style: Theme.of(context).textTheme.caption),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/details',
                            arguments: widget.postController);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            (widget.postController.post.title).capitalize,
                            style: Theme.of(context).textTheme.headline5,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          SizedBox(height: 8),
                          Text(
                            widget.postController.post.body.capitalize,
                            style: Theme.of(context).textTheme.bodyText2,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 15,
                          ),
                        ],
                      )),
                  FutureBuilder(
                      // Could be a StreamBuilder
                      future: widget.postController.getComments(),
                      builder: (context, snapshot) {
                        switch (snapshot.connectionState) {
                          case ConnectionState.none:
                          case ConnectionState.waiting:
                            return PostFooter(
                              likes: widget.postController.post.likes,
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
                              return Observer(builder: (context) {
                                print(
                                    'liking post ${widget.postController.post.id}');
                                return PostFooter(
                                  likes: widget.postController.post.likes,
                                  comments: widget
                                      .postController.post.comments.length,
                                  isLiked: widget.postController.post.like,
                                  onLikePressed: widget.postController.like,
                                  onCommentPressed: () {},
                                );
                              });
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
