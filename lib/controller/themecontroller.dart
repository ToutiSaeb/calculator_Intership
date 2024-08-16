
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Themecontroller with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light; 
  ThemeMode get thememode => _themeMode;

  Themecontroller() {
    loadTheme();

  }

  void changeTheme() {
    if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
      print("Changed to Dark Mode");
    } else if (_themeMode == ThemeMode.dark) {
      _themeMode = ThemeMode.light;
      print("Changed to Light Mode");
    }
    notifyListeners();
    saveTheme();
  }

  Future<void> saveTheme() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String theme = 'light';
    if (_themeMode == ThemeMode.light) {
      theme = 'light';
    } else if (_themeMode == ThemeMode.dark) {
      theme = 'dark';
    }
    await preferences.setString('theme', theme);
  }

  Future<void> loadTheme() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? theme = preferences.getString('theme');
    if (theme == 'light') {
      _themeMode = ThemeMode.light;
    } else if (theme == 'dark') {
      _themeMode = ThemeMode.dark;
    } 
    notifyListeners(); 
  }


}



  

