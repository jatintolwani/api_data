// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PostStore on _PostStore, Store {
  late final _$fetchRetrofitResponseAtom =
      Atom(name: '_PostStore.fetchRetrofitResponse', context: context);

  @override
  ObservableFuture<List<Post>>? get fetchRetrofitResponse {
    _$fetchRetrofitResponseAtom.reportRead();
    return super.fetchRetrofitResponse;
  }

  @override
  set fetchRetrofitResponse(ObservableFuture<List<Post>>? value) {
    _$fetchRetrofitResponseAtom.reportWrite(value, super.fetchRetrofitResponse,
        () {
      super.fetchRetrofitResponse = value;
    });
  }

  late final _$postyAtom = Atom(name: '_PostStore.posty', context: context);

  @override
  ObservableFuture<List<Post>> get posty {
    _$postyAtom.reportRead();
    return super.posty;
  }

  @override
  set posty(ObservableFuture<List<Post>> value) {
    _$postyAtom.reportWrite(value, super.posty, () {
      super.posty = value;
    });
  }

  late final _$getNewsFromRetrofitAsyncAction =
      AsyncAction('_PostStore.getNewsFromRetrofit', context: context);

  @override
  Future<void> getNewsFromRetrofit() {
    return _$getNewsFromRetrofitAsyncAction
        .run(() => super.getNewsFromRetrofit());
  }

  late final _$getDataFromLocalAsyncAction =
      AsyncAction('_PostStore.getDataFromLocal', context: context);

  @override
  Future<void> getDataFromLocal() {
    return _$getDataFromLocalAsyncAction.run(() => super.getDataFromLocal());
  }

  @override
  String toString() {
    return '''
fetchRetrofitResponse: ${fetchRetrofitResponse},
posty: ${posty}
    ''';
  }
}
