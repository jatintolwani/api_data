import 'package:mobx/mobx.dart';
import '../data/comment_data.dart';
import '../data/data.dart';
import '../retrofit/comment_client_repo.dart';

part 'comment_store.g.dart';

class CommentStore = _CommentStore with _$CommentStore;

abstract class _CommentStore with Store {
  final _retrofitApi = CommentFromRetrofit();

  static ObservableFuture<List<Post>> emptyResponse =
  ObservableFuture.value([]);

  @observable
  ObservableFuture<List<Comment>>? fetchRetrofitCommentResponse;

  @action
  Future<void> getCommentFromRetrofit(int postId) async {
    final fetch = _retrofitApi.fetchComment(postId);
    fetchRetrofitCommentResponse = ObservableFuture(fetch);
  }
}
