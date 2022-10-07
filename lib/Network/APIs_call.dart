// ignore_for_file: file_names, avoid_print

import 'package:be_pass/Authentication/Controller/loginController.dart';
import 'package:be_pass/Network/APIs_manager.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:http/http.dart' as https;

class API {
  LoginController getData = Get.find<LoginController>();
  Future post(String apiUrl, var data) async {
    if (!await _networkStatus()) return Future(() {});
    try {
      return https.post(
        Uri.parse(ApiManager.baseUrl + apiUrl),
        body: data,
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer ${getData.data}',
        },
      );
    } catch (e) {
      print(["API exception get", e.toString()]);
    }
  }

  _networkStatus() => InternetConnectionChecker().hasConnection;
}
