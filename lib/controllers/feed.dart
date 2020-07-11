import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:modular_posts/models/post.dart';
import 'package:modular_posts/models/user.dart';
import 'package:modular_posts/services/feed.dart';
import 'package:modular_posts/ui/post.dart';
part 'feed.g.dart';

class FeedController = _FeedControllerBase with _$FeedController;

/// FeedController
///
/// Responsable for managing feed related entities (Posts, Comments). Actually
/// it's the only class capable of doing so.
abstract class _FeedControllerBase with Store {
  @observable
  bool isLoading = true;

  List<UserModel> _users = [];
  List<PostModel> _posts = [];

  final feedService = FeedService();

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
  Future<List<Post>> getPosts(int userId) async {
    print('on FeedController: getUsers()'); // TODO: remove

    isLoading = true;

    try {
      List<dynamic> postsJson = await feedService.getPosts(userId);
      _posts = postsJson.map((p) => PostModel.fromJson(p)).toList();
    } on DioError catch (e) {
      print('onFeedController: ${e.message}');
    }
    isLoading = false;
  }
}
