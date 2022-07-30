import 'dart:io';

import 'package:flutter_database/model/User_datamodel.dart';
import 'package:path/path.dart';

import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class UserDB {
  late String dbName;

  UserDB({required this.dbName});

  Future<Database> openDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = join(appDocDir.path, dbName);
    DatabaseFactory dbfactory = await databaseFactoryIo;
    Database db = await dbfactory.openDatabase(appDocPath);
    return db;
  }

  InsertData(User statement) async {
    var db = await this.openDatabase();
    var store = intMapStoreFactory.store("expense");

    var keyID = store.add(db, {
      "username": statement.username,
      "usersurname": statement.usernumber,
      "usernumber": statement.usernumber,
      "usersex": statement.usersex,
      "date": statement.date.toIso8601String()
    });
    db.close();
    return keyID;
  }

  Future<bool> loadAllData() async {
    var db = await this.openDatabase();
    var store = intMapStoreFactory.store("expense");

    var snapshot = await store.find(db);
    print(snapshot);
    return true;
  }
}
