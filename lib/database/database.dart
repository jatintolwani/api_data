import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../data/data.dart';


class DatabaseManager {
  static const _databaseName = 'example.db';
  static const _databaseVersion = 1;
  static const tableName = 'example_post';

  DatabaseManager._privateConstructor();

  static final DatabaseManager instanceDb =
  DatabaseManager._privateConstructor();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), _databaseName),
      onCreate: _onCreate,
      version: _databaseVersion,
    );
  }

  Future<void> _onCreate(Database db, int version) {
    return db.execute(
        'CREATE TABLE $tableName(userId number, id number PRIMARY KEY, title TEXT, body TEXT)');
  }

  Future<List<Post>> fetch() async {
    Database db = await instanceDb.database;
    var result = await db.query(tableName);
    var article = result.map((item) => Post.fromJson(item)).toList();
    return article;
  }

  Future<void> storeData(List<Post> store) async {
    Database db = await instanceDb.database;
    for (var val in store) {
      var result = await db.insert(tableName, {
        "userId": val.userId,
        "id": val.id,
        'title': val.title,
        'body': val.body,
      });

    }
  }

  Future<void> update(num id, Post post) async {
    Database db = await instanceDb.database;
    await db.update(tableName, post.toJson(), where: 'id = ?', whereArgs: [id]);
  }

  Future<void> deleteDatabase(String path) =>
      databaseFactory.deleteDatabase(path);
}