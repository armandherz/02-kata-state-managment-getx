import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:state_managment_getx_practice/src/models/user.dart';

class UsersGetx extends GetxController {
  TextEditingController _inputName = TextEditingController();
  TextEditingController _inputLastName = TextEditingController();
  TextEditingController _inputAge = TextEditingController();

  List<User> _users = [];

  TextEditingController get inputName => _inputName;
  TextEditingController get inputLastName => _inputLastName;
  TextEditingController get inputAge => _inputAge;

  @override
  dispose() {
    _inputName.dispose();
    _inputLastName.dispose();
    _inputAge.dispose();
    super.dispose();
  }

  List<User> get users => _users;
  void addNewUser() {
    User newUser = User();
    newUser.name = _inputName.text;
    newUser.lastName = _inputLastName.text;
    newUser.age = _inputAge.text;
    _users.add(newUser);
    cleanInputs();
    update();
  }

  void cleanInputs() {
    _inputName.clear();
    _inputLastName.clear();
    _inputAge.clear();
  }
}
