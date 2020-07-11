// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FeedController on _FeedControllerBase, Store {
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

  final _$_FeedControllerBaseActionController =
      ActionController(name: '_FeedControllerBase');

  @override
  void likePost(int index) {
    final _$actionInfo = _$_FeedControllerBaseActionController.startAction(
        name: '_FeedControllerBase.likePost');
    try {
      return super.likePost(index);
    } finally {
      _$_FeedControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
