import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_posts/controllers/post_controller.dart';
import 'package:modular_posts/ui/user_tile.dart';

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

  Future getUser() async {
    if (postCtrl.post.user == null) {
      await postCtrl.getUser(postCtrl.post.userId);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FutureBuilder(
                future: getUser(),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                    case ConnectionState.waiting:
                      return UserTile(
                        name: 'Carregando...',
                        email: 'Carregando...',
                      );
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
              postCtrl.post.title,
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              postCtrl.post.body,
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
