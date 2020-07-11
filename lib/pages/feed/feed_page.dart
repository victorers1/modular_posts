import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_posts/controllers/feed_controller.dart';
import 'package:modular_posts/ui/post.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  final feedController = Modular.get<FeedController>();

  Future getFeed() async {
    await feedController.getUsers();
    await feedController.getPosts(null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getFeed(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
              case ConnectionState.none:
                return Container(
                  color: Colors.white,
                  child: Center(
                    child: CircularProgressIndicator(
                        backgroundColor: Colors.grey[300]),
                  ),
                );
                break;
              default:
                if (snapshot.hasError)
                  return Container();
                else
                  return ListView.builder(
                      itemCount: feedController.posts.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: PostWidget(
                            post: feedController.posts[index],
                            getComments: feedController.getComments,
                          ),
                        );
                      });
            }
          }),
    );
  }
}
