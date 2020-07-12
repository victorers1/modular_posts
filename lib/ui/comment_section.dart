import 'package:flutter/material.dart';
import 'package:modular_posts/controllers/post_controller.dart';
import 'package:modular_posts/ui/comment.dart';

class CommentSection extends StatelessWidget {
  final PostController postCtrl;
  CommentSection({@required this.postCtrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Comentários',
          style: Theme.of(context).textTheme.headline4.copyWith(fontSize: 20),
        ),
        SizedBox(height: 20),
        FutureBuilder(
            future: postCtrl.getComments(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: CircularProgressIndicator(),
                  );
                  break;
                default:
                  if (snapshot.hasError)
                    return Padding(
                      padding: EdgeInsets.all(30),
                      child: Text('Erro!'),
                    );
                  return ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 10);
                    },
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: postCtrl.post.comments.length,
                    itemBuilder: (context, index) =>
                        CommentWidget(comment: postCtrl.post.comments[index]),
                  );
              }
            })
      ],
    );
  }
}
