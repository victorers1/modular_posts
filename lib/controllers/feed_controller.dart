import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:modular_posts/controllers/post_controller.dart';
import 'package:modular_posts/models/comment.dart';
import 'package:modular_posts/models/post.dart';
import 'package:modular_posts/models/user.dart';
import 'package:modular_posts/services/feed_service.dart';
part 'feed_controller.g.dart';

class FeedController = _FeedControllerBase with _$FeedController;

/// FeedController
///
/// Responsable for managing feed related entities (PostsControllers, Comments).
abstract class _FeedControllerBase with Store {
  List<UserModel> _users = [];
  List<PostController> _posts = [];

  final feedService = FeedService(); // Responsable for network requests

  get posts => _posts;
  get users => _users;

  @action
  Future<bool> getUsers() async {
    print('on FeedController > getUsers()'); // TODO: remove
    try {
      List<dynamic> usersJson = await feedService.getUsers();
      _users = usersJson.map((u) => UserModel.fromJson(u)).toList();
    } on DioError catch (e) {
      print('onFeedController > getUsers() > ${e.message}');
      return false;
    }
    return true;
  }

  @action
  Future<bool> getPosts(int userID) async {
    print('on FeedController > getUsers()'); // TODO: remove
    try {
      List<dynamic> postsJson = await feedService.getPosts(userID);
      _posts = postsJson.map((p) => PostController.fromJson(p)).toList();
    } on DioError catch (e) {
      print('onFeedController > getPosts > ${e.message}');
      return false;
    }
    return true;
  }

  @action
  Future<bool> getComments(PostModel p) async {
    // print('on FeedController > getComments()'); // TODO: remove

    try {
      List<dynamic> commentsJson = await feedService.getComments(p.id);
      p.comments = commentsJson.map((c) => CommentModel.fromJson(c)).toList();
      // print('${p.comments.length}');
    } on DioError catch (e) {
      print('onFeedController > getComments > ${e.message}');
      return false;
    }

    return true;
  }
}
