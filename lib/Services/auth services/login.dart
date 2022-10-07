// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';
import 'package:be_pass/Network/APIs_call.dart';
import 'package:be_pass/Network/APIs_manager.dart';
import 'package:be_pass/Widgets/bottom_nav.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future login(
  String username,
  String password,
) async {
  var content;
  bool error = false;

  String errorMessage = "Unable to process request, please try later!";

  try {
    var data = jsonEncode({"username": username, "password": password});
    if (kDebugMode) {
      print(data);
    }
    var response = await API().post(ApiManager.login, data);
    if (kDebugMode) {
      print('statusCode');
    }
    if (kDebugMode) {
      print(response.statusCode);
    }
    if (kDebugMode) {
      print(response.body);
    }
    if (response.statusCode == 200) {
      error = false;
      content = jsonDecode(response.body);
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setString('token', content['token']);
      Get.to(BottomBar());
    } else {
      error = true;
      content = jsonDecode(response.body)['error'];
    }
  } catch (e) {
    error = true;
    content = errorMessage;
  }
  return {
    "error": error,
    "content": content,
  };
}
