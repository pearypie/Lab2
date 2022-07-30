import 'dart:io';

import 'package:path/path.dart';

import 'package:path_provider/path_provider.dart';

class UserDB {
  late String dbName;

  UserDB({required this.dbName});

  Future<String> openDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = join(appDocDir.path, dbName);
    return appDocPath;
  }
}
