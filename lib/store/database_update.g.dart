// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_update.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UpdateDatabase on _UpdateDatabase, Store {
  late final _$updateAtom =
      Atom(name: '_UpdateDatabase.update', context: context);

  @override
  bool get update {
    _$updateAtom.reportRead();
    return super.update;
  }

  @override
  set update(bool value) {
    _$updateAtom.reportWrite(value, super.update, () {
      super.update = value;
    });
  }

  late final _$fetchSavePostAsyncAction =
      AsyncAction('_UpdateDatabase.fetchSavePost', context: context);

  @override
  Future<void> fetchSavePost() {
    return _$fetchSavePostAsyncAction.run(() => super.fetchSavePost());
  }

  @override
  String toString() {
    return '''
update: ${update}
    ''';
  }
}
