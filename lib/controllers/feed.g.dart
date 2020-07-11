// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FeedController on _FeedControllerBase, Store {
  final _$isLoadingAtom = Atom(name: '_FeedControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$getUsersAsyncAction = AsyncAction('_FeedControllerBase.getUsers');

  @override
  Future<bool> getUsers() {
    return _$getUsersAsyncAction.run(() => super.getUsers());
  }

  final _$getPostsAsyncAction = AsyncAction('_FeedControllerBase.getPosts');

  @override
  Future<List<Post>> getPosts(int userId) {
    return _$getPostsAsyncAction.run(() => super.getPosts(userId));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}
