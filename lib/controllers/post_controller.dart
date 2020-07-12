import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:modular_posts/models/comment.dart';
import 'package:modular_posts/models/post.dart';
import 'package:modular_posts/models/user.dart';
import 'package:modular_posts/services/post_service.dart';
part 'post_controller.g.dart';

class PostController = _PostControllerBase with _$PostController;

/// Post Controller
///
/// Responsable for managing a specific Post (content, user, comments etc).
abstract class _PostControllerBase with Store {
  PostModel _post = PostModel();

  _PostControllerBase();
  _PostControllerBase.fromJson(Map<String, dynamic> json) {
    _post = PostModel.fromJson(json);
  }

  final postService = PostService();

  @computed
  PostModel get post => _post;
  @computed
  List<CommentModel> get comments => _post.comments;

  @action
  setTitle(String t) => _post.title = t;
  @action
  setBody(String b) => _post.body = b;
  @action
  setTime(String t) => _post.time = t;
  @action
  setDate(String d) => _post.date = d;
  @action
  setLikes(int l) => _post.likes = l;
  @action
  setLike(bool l) => _post.like = l;
  @action
  setComments(List<CommentModel> c) => _post.comments = c;

  @action
  Future<bool> getComments() async {
    try {
      List<dynamic> commentsJson = await postService.getComments(_post.id);
      _post.comments =
          commentsJson.map((c) => CommentModel.fromJson(c)).toList();
      // print('${p.comments.length}');
    } on DioError catch (e) {
      print('onFeedController > getComments > ${e.message}');
      return false;
    }
    return true;
  }

  @action
  Future<bool> getUser(int id) async {
    print('on FeedController > getUsers()'); // TODO: remove
    try {
      Map<String, dynamic> userJson = await postService.getUser(id);
      post.user = UserModel.fromJson(userJson);
    } on DioError catch (e) {
      print('onFeedController > getUsers() > ${e.message}');
      return false;
    }
    return true;
  }

  @action
  like() {
    _post.likes += _post.like ? -1 : 1;

    _post.like = !_post.like;
    print('post have ${_post.likes} likes'); // TODO: remove
  }
}
