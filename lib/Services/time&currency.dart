// ignore_for_file: prefer_typing_uninitialized_variables, file_names

import 'dart:convert';
import 'package:be_pass/Network/APIs_call.dart';
import 'package:be_pass/Network/APIs_manager.dart';
import 'package:flutter/foundation.dart';

Future changeTimeFormat(bool value) async {
  var contnet;
  bool error = false;
  String errorMessage = "Unable to process, please try later";
  try {
    var data = jsonEncode({"timeFormat24": value});
    if (kDebugMode) {
      print(" data is to be sent,$data");
    }
    var response = await API().post(ApiManager.changeTimeFormat, data);
    if (kDebugMode) {
      print('statusCode is ${response.statusCode}');
    }
    if (response.statusCode == 200) {
      error = false;
      contnet = jsonDecode(response.body);
      if (kDebugMode) {
        print(contnet);
      }
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

Future changeCurrency(String value) async {
  var contnet;
  bool error = false;
  String errorMessage = "Unable to process, please try later";
  try {
    var data = jsonEncode({"currencyName": value});
    if (kDebugMode) {
      print(" data is to be sent,$data");
    }
    var response = await API().post(ApiManager.setCurrency, data);
    if (kDebugMode) {
      print('statusCode is ${response.statusCode}');
    }
    if (response.statusCode == 200) {
      error = false;
      contnet = jsonDecode(response.body);
      if (kDebugMode) {
        print(contnet);
      }
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
    "_contnet": contnet,
  };
}
