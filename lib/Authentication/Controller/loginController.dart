// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'package:get/get.dart';

class LoginController extends GetxController {
  var data;
  getUserData() {
    return data;
  }

  setUserData(var d) {
    data = d;
  }
}
