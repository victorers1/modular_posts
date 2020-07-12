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
posts: ${posts}
    ''';
  }
}
