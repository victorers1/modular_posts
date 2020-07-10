import 'package:mobx/mobx.dart';
import 'package:modular_posts/models/user.dart';
import 'package:modular_posts/ui/post.dart';
part 'feed.g.dart';

class FeedController = _FeedControllerBase with _$FeedController;

abstract class _FeedControllerBase with Store {
  List<User> users = [];
  List<Post> posts = [];

  @action
  Future<List<User>> getUsers() async {}

  @action
  Future<List<Post>> getPost() async {}
}
