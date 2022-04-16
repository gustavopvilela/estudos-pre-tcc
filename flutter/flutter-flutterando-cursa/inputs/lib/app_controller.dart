import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController(); // deixa apenas uma instância para vários widgets
  
  bool isDark = false;

  changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}