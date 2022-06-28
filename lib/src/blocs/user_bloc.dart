import 'package:flutter/material.dart';

import '../model/user.dart';
import '../services/user/user_crud.dart';

class UserBloc extends ChangeNotifier {
  Person? _user;

  Person get user => _user!;

  adduser(Person user) async {
    await UserCRUD.addUser(user);
    // print(res);
  }

  fetchUsers(String id) async {
    var user = await UserCRUD.fetchUser(id);
    Person newUser = Person(
        age: user['age'],
        bio: user['bio'],
        firstName: user['first_name'],
        id: id,
        image: user['image'],
        lastName: user['last_name'],
        phoneNo: user['phone_no'],
        username: user['username'],
        status: user['status']);
    _user = newUser;
    // print(_user);
    notifyListeners();
  }
}
