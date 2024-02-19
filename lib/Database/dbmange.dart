import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'dbmodel.dart';

class DatabaseManager {
  Database? database;

  init() async {
    WidgetsFlutterBinding.ensureInitialized();

    database = await openDatabase(
      join(await getDatabasesPath(), "userData"),
      onCreate: (db, version) async {
        return db.execute(
            'CREATE TABLE User(id INTEGER PRIMARY KEY AUTOINCREMENT,fname TEXT,lName TEXT,email TEXT)');
      },
      version: 1,
    );
  }

  Future<void> insertUser(UserModel userModel) async {
    try {
      if (database == null) {
        await init();
      }
      await database?.insert(
        'User',
        userModel.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }catch(e){
      print("error::$e");
    }
  }

  // List<UserModel> results = userList
  //     .where((word) => word.fName!.contains(enteredKeyword.toLowerCase()))
  //     .toList();
  Future<List<UserModel>> getUser() async {
    if (database == null) {
      await init();
    }
    final userDB = database;
    final List<Map<String, dynamic>> userMaps = await userDB!.query('User');
    return List.generate(userMaps.length, (i) {
      return UserModel(
        id: userMaps[i]['id'],
        fName: userMaps[i]['fname'],
        lName: userMaps[i]['lName'],
        email: userMaps[i]['email'],
      );
    });
  }

  Future<List<UserModel>> findUser(String query) async {
    if (database == null) {
      await init();
    }
    final userDB = database;
    final List<Map<String, dynamic>> userMaps = await userDB!.rawQuery("SELECT * FROM User WHERE fName LIKE'%$query%'");
    return List.generate(userMaps.length, (i) {
      return UserModel(
        id: userMaps[i]['id'],
        fName: userMaps[i]['fname'],
        lName: userMaps[i]['lName'],
        email: userMaps[i]['email'],
      );
    });
  }

  Future<void> updateUser(UserModel dbModel) async {
    final userDB = await database;

    await userDB?.update(
      'User',
      dbModel.toMap(),
      where: 'email = ?',
      whereArgs: [dbModel.email],
    );
  }


  Future<void> deleteStudent(String email) async {
    final userDB = await database;
    // Delete operation
    await userDB?.delete(
      //table name
      'User',
      //'where statement to identify a specific student'
      where: 'email = ?',
      //arguments to the where statement(email passed as parameter in our case)
      whereArgs: [email],
    );
  }
}