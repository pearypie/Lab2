import 'package:flutter/cupertino.dart';
import 'package:flutter_database/model/User_datamodel.dart';

class UserProvider with ChangeNotifier {
  List<User> user = [
    User('TestSub1', 'Datamodel', 1114755563256, 'male'),
    User('TestSub2', 'Datamodel', 5454554512863, 'female'),
    User('TestSub3', 'Datamodel', 4147117567415, 'male'),
    User('TestSub4', 'Datamodel', 4545242056876, 'female')
  ];

  List<User> getdata() {
    return user;
  }

  void addUser(User userdata) {
    user.add(userdata);

    notifyListeners();
  }
}
