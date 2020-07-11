// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tabs_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TabsController on _TabsControllerBase, Store {
  final _$tabAtom = Atom(name: '_TabsControllerBase.tab');

  @override
  int get tab {
    _$tabAtom.reportRead();
    return super.tab;
  }

  @override
  set tab(int value) {
    _$tabAtom.reportWrite(value, super.tab, () {
      super.tab = value;
    });
  }

  final _$_TabsControllerBaseActionController =
      ActionController(name: '_TabsControllerBase');

  @override
  void setTab(int t) {
    final _$actionInfo = _$_TabsControllerBaseActionController.startAction(
        name: '_TabsControllerBase.setTab');
    try {
      return super.setTab(t);
    } finally {
      _$_TabsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tab: ${tab}
    ''';
  }
}
