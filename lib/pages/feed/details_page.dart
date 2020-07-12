import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_posts/controllers/post_controller.dart';
import 'package:modular_posts/ui/user_avatar.dart';
import 'package:modular_posts/ui/user_info.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                UserAvatar(),
                FutureBuilder(
                    future: getUser(),
                    builder: (context, snapshot) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.none:
                        case ConnectionState.waiting:
                          return UserInfo(
                            name: 'Carregando...',
                            email: 'Carregando...',
                          );
                          break;
                        default:
                          if (snapshot.hasError)
                            return UserInfo(
                              name: 'Ops!',
                              email: 'Houve um erro',
                            );
                          else
                            return UserInfo(
                              name: postCtrl.post.user.name,
                              email: postCtrl.post.user.email,
                            );
                      }
                    })
              ],
            ),
            Text(postCtrl.post.title),
            Text(postCtrl.post.body),
          ],
        ),
      ),
    );
  }
}
