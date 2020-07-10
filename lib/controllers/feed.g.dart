// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FeedController on _FeedControllerBase, Store {
  final _$getUsersAsyncAction = AsyncAction('_FeedControllerBase.getUsers');

  @override
  Future<List<User>> getUsers() {
    return _$getUsersAsyncAction.run(() => super.getUsers());
  }

  final _$getPostAsyncAction = AsyncAction('_FeedControllerBase.getPost');

  @override
  Future<List<Post>> getPost() {
    return _$getPostAsyncAction.run(() => super.getPost());
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
