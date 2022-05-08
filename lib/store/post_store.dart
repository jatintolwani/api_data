import 'package:mobx/mobx.dart';
import '../data/data.dart';
import '../database/database.dart';
import '../retrofit/client_repo.dart';

part 'post_store.g.dart';

class PostStore = _PostStore with _$PostStore;

abstract class _PostStore with Store {
  final _retrofitApi = PostFromRetrofit();

  _PostStore() {
    getNewsFromRetrofit();

  }

  static ObservableFuture<List<Post>> emptyResponse =
      ObservableFuture.value([]);

  @observable
  ObservableFuture<List<Post>>? fetchRetrofitResponse;
  @observable
ObservableFuture<List<Post>> posty = ObservableFuture.value(<Post> []) ;

  @action
  Future<void> getNewsFromRetrofit() async {
    final fetch = _retrofitApi.fetchPost();
    fetchRetrofitResponse = ObservableFuture(fetch);
    DatabaseManager.instanceDb
        .storeData(fetchRetrofitResponse?.value ?? <Post>[]);
  }

  @action
  Future<void> getDataFromLocal() async {
    var postly =  await DatabaseManager.instanceDb.fetch();
    posty = ObservableFuture.value(postly);
  }

}
