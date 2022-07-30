import 'package:flutter/cupertino.dart';
import 'package:flutter_database/model/User_datamodel.dart';

class UserProvider with ChangeNotifier {
  List<User> user = [
    User('TestSub1', 'Datamodel', 1114755563256, 'male', DateTime.now()),
    User('TestSub2', 'Datamodel', 5454554512863, 'female', DateTime.now()),
    User('TestSub3', 'Datamodel', 4147117567415, 'male', DateTime.now()),
    User('TestSub4', 'Datamodel', 4545242056876, 'female', DateTime.now())
  ];

  List<User> getdata() {
    return user;
  }

  void addUser(User userdata) {
    user.add(userdata);

    notifyListeners();
  }
}
