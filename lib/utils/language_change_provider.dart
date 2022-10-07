// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/cupertino.dart';

class LanguageChangeProvider with ChangeNotifier {
  Locale _currentLocale = Locale("en");

  Locale get currentLocale => _currentLocale;

  void changeLocale(String locale) {
    _currentLocale = Locale(locale);
    print(locale);
    notifyListeners();
  }
}
