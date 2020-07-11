import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:modular_posts/models/post.dart';
import 'package:modular_posts/models/user.dart';
import 'package:modular_posts/services/feed.dart';
part 'feed.g.dart';

class FeedController = _FeedControllerBase with _$FeedController;

/// FeedController
///
/// Responsable for managing feed related entities (Posts, Comments). Actually
/// it's the only class capable of doing so.
abstract class _FeedControllerBase with Store {
  List<UserModel> _users = [];
  List<PostModel> _posts = [];

  final feedService = FeedService();

  get posts => _posts;
  get users => _users;

  @action
  Future<bool> getUsers() async {
    print('on FeedController: getUsers()'); // TODO: remove
    try {
      List<dynamic> usersJson = await feedService.getUsers();
      _users = usersJson.map((u) => UserModel.fromJson(u)).toList();
    } on DioError catch (e) {
      print('onFeedController: ${e.message}');
      return false;
    }
    return true;
  }

  @action
  Future<bool> getPosts(int userID) async {
    print('on FeedController: getUsers()'); // TODO: remove

    try {
      List<dynamic> postsJson = await feedService.getPosts(userID);
      _posts = postsJson.map((p) => PostModel.fromJson(p)).toList();
    } on DioError catch (e) {
      print('onFeedController: ${e.message}');
      return false;
    }

    return true;
  }
}
