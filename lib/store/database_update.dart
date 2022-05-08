import 'package:mobx/mobx.dart';

import '../data/data.dart';
import '../database/database.dart';

part 'database_update.g.dart';

class UpdateDatabase = _UpdateDatabase with _$UpdateDatabase;

abstract class _UpdateDatabase with Store {
  _UpdateDatabase() {

  }

  final dbHelper = DatabaseManager.instanceDb;

  @observable
  bool update = false;

  ObservableList<Post> myUpdatePost = ObservableList<Post>();

  @action
  Future<void> fetchSavePost() async {
    final allPost = await dbHelper.fetch();
    myUpdatePost.addAll(allPost);
  }

  Future<void> insertAllPost(List<Post> store) async {
    final allPost = await dbHelper.storeData(store);

  }

}