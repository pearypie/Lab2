import 'package:flutter/cupertino.dart';
import 'package:flutter_database/database/User_database.dart';
import 'package:flutter_database/model/User_datamodel.dart';

class UserProvider with ChangeNotifier {
  List<User> user = [];

  List<User> getdata() {
    return user;
  }

  void addUser(User userdata) async {
    var db = await UserDB(dbName: "User.db").openDatabase();
    print(db);
    user.insert(0, userdata);

    notifyListeners();
  }
}
