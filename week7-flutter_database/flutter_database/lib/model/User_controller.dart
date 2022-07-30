import 'package:flutter/cupertino.dart';
import 'package:flutter_database/database/User_database.dart';
import 'package:flutter_database/model/User_datamodel.dart';

class UserProvider with ChangeNotifier {
  List<User> user = [];

  List<User> getdata() {
    return user;
  }

  void addUser(User statement) async {
    var db = UserDB(dbName: "User.db");
    await db.InsertData(statement);
    user.insert(0, statement);
    db.loadAllData();

    notifyListeners();
  }
}
