// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserController on _UserControllerBase, Store {
  Computed<UserModel> _$userComputed;

  @override
  UserModel get user =>
      (_$userComputed ??= Computed<UserModel>(() => super.user,
              name: '_UserControllerBase.user'))
          .value;

  final _$_userAtom = Atom(name: '_UserControllerBase._user');

  @override
  UserModel get _user {
    _$_userAtom.reportRead();
    return super._user;
  }

  @override
  set _user(UserModel value) {
    _$_userAtom.reportWrite(value, super._user, () {
      super._user = value;
    });
  }

  final _$getUserAsyncAction = AsyncAction('_UserControllerBase.getUser');

  @override
  Future<bool> getUser(int id) {
    return _$getUserAsyncAction.run(() => super.getUser(id));
  }

  @override
  String toString() {
    return '''
user: ${user}
    ''';
  }
}
