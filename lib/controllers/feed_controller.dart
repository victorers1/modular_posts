import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:modular_posts/controllers/post_controller.dart';
import 'package:modular_posts/models/user.dart';
import 'package:modular_posts/services/feed_service.dart';
part 'feed_controller.g.dart';

class FeedController = _FeedControllerBase with _$FeedController;

/// FeedController
///
/// Responsable for managing feed related entities (PostsControllers, Comments).
abstract class _FeedControllerBase with Store {
  final feedService = FeedService(); // Responsable for network requests

  @observable
  ObservableList<UserModel> _users = ObservableList<UserModel>.of([]);
  @observable
  ObservableList<PostController> _posts = ObservableList<PostController>.of([]);

  @computed
  get posts => _posts;
  @computed
  get users => _users;

  @action
  Future<bool> getPosts(int userID) async {
    print('on FeedController > getUsers()'); // TODO: remove
    try {
      List<dynamic> postsJson = await feedService.getPosts(userID);
      _posts = ObservableList<PostController>.of(
          postsJson.map((p) => PostController.fromJson(p)).toList());
    } on DioError catch (e) {
      print('onFeedController > getPosts > ${e.message}');
      return false;
    }
    return true;
  }
}
