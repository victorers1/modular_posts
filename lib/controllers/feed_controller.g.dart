// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FeedController on _FeedControllerBase, Store {
  Computed<dynamic> _$postsComputed;

  @override
  dynamic get posts => (_$postsComputed ??= Computed<dynamic>(() => super.posts,
          name: '_FeedControllerBase.posts'))
      .value;
  Computed<dynamic> _$usersComputed;

  @override
  dynamic get users => (_$usersComputed ??= Computed<dynamic>(() => super.users,
          name: '_FeedControllerBase.users'))
      .value;

  final _$_usersAtom = Atom(name: '_FeedControllerBase._users');

  @override
  ObservableList<UserModel> get _users {
    _$_usersAtom.reportRead();
    return super._users;
  }

  @override
  set _users(ObservableList<UserModel> value) {
    _$_usersAtom.reportWrite(value, super._users, () {
      super._users = value;
    });
  }

  final _$_postsAtom = Atom(name: '_FeedControllerBase._posts');

  @override
  ObservableList<PostController> get _posts {
    _$_postsAtom.reportRead();
    return super._posts;
  }

  @override
  set _posts(ObservableList<PostController> value) {
    _$_postsAtom.reportWrite(value, super._posts, () {
      super._posts = value;
    });
  }

  final _$getPostsAsyncAction = AsyncAction('_FeedControllerBase.getPosts');

  @override
  Future<bool> getPosts(int userID) {
    return _$getPostsAsyncAction.run(() => super.getPosts(userID));
  }

  @override
  String toString() {
    return '''
posts: ${posts},
users: ${users}
    ''';
  }
}
