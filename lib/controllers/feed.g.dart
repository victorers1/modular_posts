// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

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

  @override
  String toString() {
    return '''

    ''';
  }
}
