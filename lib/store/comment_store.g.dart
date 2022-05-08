// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CommentStore on _CommentStore, Store {
  late final _$fetchRetrofitCommentResponseAtom = Atom(
      name: '_CommentStore.fetchRetrofitCommentResponse', context: context);

  @override
  ObservableFuture<List<Comment>>? get fetchRetrofitCommentResponse {
    _$fetchRetrofitCommentResponseAtom.reportRead();
    return super.fetchRetrofitCommentResponse;
  }

  @override
  set fetchRetrofitCommentResponse(ObservableFuture<List<Comment>>? value) {
    _$fetchRetrofitCommentResponseAtom
        .reportWrite(value, super.fetchRetrofitCommentResponse, () {
      super.fetchRetrofitCommentResponse = value;
    });
  }

  late final _$getCommentFromRetrofitAsyncAction =
      AsyncAction('_CommentStore.getCommentFromRetrofit', context: context);

  @override
  Future<void> getCommentFromRetrofit(int postId) {
    return _$getCommentFromRetrofitAsyncAction
        .run(() => super.getCommentFromRetrofit(postId));
  }

  @override
  String toString() {
    return '''
fetchRetrofitCommentResponse: ${fetchRetrofitCommentResponse}
    ''';
  }
}
