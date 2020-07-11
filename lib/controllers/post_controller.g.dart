// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PostController on _PostControllerBase, Store {
  final _$getCommentsAsyncAction =
      AsyncAction('_PostControllerBase.getComments');

  @override
  Future<bool> getComments() {
    return _$getCommentsAsyncAction.run(() => super.getComments());
  }

  final _$_PostControllerBaseActionController =
      ActionController(name: '_PostControllerBase');

  @override
  dynamic setTitle(String t) {
    final _$actionInfo = _$_PostControllerBaseActionController.startAction(
        name: '_PostControllerBase.setTitle');
    try {
      return super.setTitle(t);
    } finally {
      _$_PostControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setBody(String b) {
    final _$actionInfo = _$_PostControllerBaseActionController.startAction(
        name: '_PostControllerBase.setBody');
    try {
      return super.setBody(b);
    } finally {
      _$_PostControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTime(String t) {
    final _$actionInfo = _$_PostControllerBaseActionController.startAction(
        name: '_PostControllerBase.setTime');
    try {
      return super.setTime(t);
    } finally {
      _$_PostControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDate(String d) {
    final _$actionInfo = _$_PostControllerBaseActionController.startAction(
        name: '_PostControllerBase.setDate');
    try {
      return super.setDate(d);
    } finally {
      _$_PostControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLikes(int l) {
    final _$actionInfo = _$_PostControllerBaseActionController.startAction(
        name: '_PostControllerBase.setLikes');
    try {
      return super.setLikes(l);
    } finally {
      _$_PostControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLike(bool l) {
    final _$actionInfo = _$_PostControllerBaseActionController.startAction(
        name: '_PostControllerBase.setLike');
    try {
      return super.setLike(l);
    } finally {
      _$_PostControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setComments(List<CommentModel> c) {
    final _$actionInfo = _$_PostControllerBaseActionController.startAction(
        name: '_PostControllerBase.setComments');
    try {
      return super.setComments(c);
    } finally {
      _$_PostControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic like() {
    final _$actionInfo = _$_PostControllerBaseActionController.startAction(
        name: '_PostControllerBase.like');
    try {
      return super.like();
    } finally {
      _$_PostControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
