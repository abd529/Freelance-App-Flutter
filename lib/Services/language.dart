// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';
import 'package:be_pass/Network/APIs_call.dart';
import 'package:be_pass/Network/APIs_manager.dart';
import 'package:flutter/foundation.dart';

Future language(String value) async {
  var content;
  bool error = false;
  String errorMessage = "Unable to process, please try later";
  try {
    var data = jsonEncode({"languageName": value});
    if (kDebugMode) {
      print(" data is to be sent,$data");
    }
    var response = await API().post(ApiManager.selectLanguage, data);
    if (kDebugMode) {
      print('statusCode is ${response.statusCode}');
    }
    if (response.statusCode == 200) {
      error = false;
      content = jsonDecode(response.body);
      if (kDebugMode) {
        print(content);
      }
    } else {
      error = true;
      content = jsonDecode(response.body)["error"];
    }
  } catch (e) {
    error = true;
    content = errorMessage;
  }
  return {
    "error": error,
    "_content": content,
  };
}
