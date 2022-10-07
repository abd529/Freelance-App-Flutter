// ignore_for_file: prefer_typing_uninitialized_variables, file_names

import 'dart:convert';
import 'package:be_pass/Network/APIs_call.dart';
import 'package:be_pass/Network/APIs_manager.dart';
import 'package:be_pass/Widgets/bottom_nav.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future signUp(String username, String email, String password) async {
  var contnet;
  bool error = false;
  String errorMessage = "Unable to process, please try later";

  try {
    var data = jsonEncode(
        {"username": username, "email": email, "password": password});

    if (kDebugMode) {
      print(" data is to be sent,$data");
    }
    var response = await API().post(ApiManager.signup, data);
    if (kDebugMode) {
      print("Status Code =${response.statusCode}");
    }
    if (response.statusCode == 200) {
      error = false;
      contnet = jsonDecode(response.body);
      if (kDebugMode) {
        print(contnet);
      }
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setString('token', contnet['token']);
      Get.to(BottomBar());
    } else {
      error = true;
      contnet = jsonDecode(response.body)["error"];
    }
  } catch (e) {
    error = true;
    contnet = errorMessage;
  }
  return {
    "error": error,
    "_content": contnet,
  };
}
