import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SettingsGetx extends GetxController {
  RxString _name = "".obs;
  RxString _lastName = "".obs;
  RxBool _changeTheme = false.obs;

  String get name => _name.value;
  String get lastName => _lastName.value;
  bool get theme => _changeTheme.value;

  set setName(String d) => _name.value = d;
  set setLastName(String d) => _lastName.value = d;
  set setTheme(bool d) => _changeTheme.value = d;
}
