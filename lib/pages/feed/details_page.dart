import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_posts/controllers/post_controller.dart';
import 'package:modular_posts/ui/comment.dart';
import 'package:modular_posts/ui/comment_section.dart';
import 'package:modular_posts/ui/user_tile.dart';
import 'package:modular_posts/utils/capitalize.dart';
import 'package:shimmer/shimmer.dart';

class PostDetailsPage extends StatefulWidget {
  final PostController postController;
  PostDetailsPage({@required this.postController});

  @override
  _PostDetailsPageState createState() => _PostDetailsPageState();
}

class _PostDetailsPageState extends State<PostDetailsPage> {
  PostController postCtrl;

  @override
  void initState() {
    super.initState();
    if (postCtrl == null) postCtrl = Modular.args.data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          FutureBuilder(
              future: postCtrl.getUser(postCtrl.post.userId),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                  case ConnectionState.waiting:
                    return UserTileShimmer();
                    break;
                  default:
                    if (snapshot.hasError)
                      return UserTile(
                        name: 'Ops!',
                        email: 'Houve um erro',
                      );
                    else
                      return UserTile(
                        name: postCtrl.post.user.name,
                        email: postCtrl.post.user.email,
                        userID: postCtrl.post.userId,
                      );
                }
              }),
          SizedBox(height: 20),
          Text(
            postCtrl.post.title.capitalize,
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            postCtrl.post.body.capitalize,
            style: Theme.of(context).textTheme.bodyText2,
            textAlign: TextAlign.justify,
          ),
          Divider(height: 50),
          CommentSection(postCtrl: postCtrl)
        ],
      ),
    );
  }
}
