import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';
import 'package:take_photo_type/models/type.dart';
import 'package:take_photo_type/models/item.dart';

class DatabaseHelper {
  static const _databaseName = 'PhotoTypeData.db';
  static const _databaseVersion = 1;

//singleton class
  DatabaseHelper._();
  static final DatabaseHelper instance = DatabaseHelper._();

  Database _database;
  Future<Database> get database async {
    if (_database != null) {
      return _database;
    }
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    Directory dataDirectory = await getApplicationDocumentsDirectory();
    String dbPath = join(dataDirectory.path, _databaseName);
    return await openDatabase(dbPath,
        version: _databaseVersion, onCreate: _onCreateDB);
  }

  _onCreateDB(Database db, int version) async {
    await db.execute('''
    CREATE TABLE ${Type.tblType}(
      ${Type.colId} INTEGER PRIMARY KEY AUTOINCREMENT,
      ${Type.colName} TEXT NOT NULL,
      ${Type.colCreateDate} datetime default current_timestamp
    )
    CREATE TABLE ${Item.tblItem}(
      ${Item.colId} INTEGER PRIMARY KEY AUTOINCREMENT,
      ${Item.colTypeId} INTEGER NOT NULL,
      ${Item.colPathImage} TEXT NOT NULL,
      ${Item.colCreateDate} datetime default current_timestamp
    )
    ''');
  }

  //type
  Future<int> insertType(Type type) async {
    Database db = await database;

    return await db.insert(Type.tblType, type.toMap());
  }

  Future<int> updateType(Type type) async {
    Database db = await database;

    return await db.update(Type.tblType, type.toMap(),
        where: '${Type.colId}=?', whereArgs: [type.id]);
  }

  Future<int> deleteType(int id) async {
    Database db = await database;

    return await db
        .delete(Type.tblType, where: '${Type.colId}=?', whereArgs: [id]);
  }

  Future<List<Type>> fetchTypes() async {
    Database db = await database;
    List<Map> listType = await db.query(Type.tblType);
    return listType.length == 0
        ? []
        : listType.map((e) => Type.fromMap(e)).toList();
  }

  //item
  Future<int> insertItem(Item item) async {
    Database db = await database;

    return await db.insert(Item.tblItem, item.toMap());
  }

  Future<int> updateItem(Item item) async {
    Database db = await database;

    return await db.update(Item.tblItem, item.toMap(),
        where: '${Item.colId}=?', whereArgs: [item.id]);
  }

  Future<int> deleteItem(int id) async {
    Database db = await database;

    return await db
        .delete(Type.tblType, where: '${Item.colId}=?', whereArgs: [id]);
  }

  Future<List<Item>> fetchItems() async {
    Database db = await database;
    List<Map> listItem = await db.query(Item.tblItem);

    return listItem.length == 0
        ? []
        : listItem.map((e) => Item.fromMap(e)).toList();
  }

  Future<List<Item>> fetchItemsOfType(int typeId) async {
    Database db = await database;

    var result = await db
        .query(Item.tblItem, where: '${Item.colTypeId}', whereArgs: [typeId]);
    List<Item> listItems =
        result.isNotEmpty ? result.map((e) => Item.fromMap(e)).toList() : [];
    return listItems;
  }
}
