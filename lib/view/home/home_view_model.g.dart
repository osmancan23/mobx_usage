// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeViewModel on HomeViewModelBase, Store {
  final _$numberAtom = Atom(name: 'HomeViewModelBase.number');

  @override
  int get number {
    _$numberAtom.reportRead();
    return super.number;
  }

  @override
  set number(int value) {
    _$numberAtom.reportWrite(value, super.number, () {
      super.number = value;
    });
  }

  final _$HomeViewModelBaseActionController =
      ActionController(name: 'HomeViewModelBase');

  @override
  void increment() {
    final _$actionInfo = _$HomeViewModelBaseActionController.startAction(
        name: 'HomeViewModelBase.increment');
    try {
      return super.increment();
    } finally {
      _$HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
number: ${number}
    ''';
  }
}
