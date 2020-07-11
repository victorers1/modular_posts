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

  final _$getUsersAsyncAction = AsyncAction('_FeedControllerBase.getUsers');

  @override
  Future<bool> getUsers() {
    return _$getUsersAsyncAction.run(() => super.getUsers());
  }

  final _$getPostsAsyncAction = AsyncAction('_FeedControllerBase.getPosts');

  @override
  Future<bool> getPosts(int userID) {
    return _$getPostsAsyncAction.run(() => super.getPosts(userID));
  }

  final _$getCommentsAsyncAction =
      AsyncAction('_FeedControllerBase.getComments');

  @override
  Future<bool> getComments(PostModel p) {
    return _$getCommentsAsyncAction.run(() => super.getComments(p));
  }

  @override
  String toString() {
    return '''
posts: ${posts},
users: ${users}
    ''';
  }
}
