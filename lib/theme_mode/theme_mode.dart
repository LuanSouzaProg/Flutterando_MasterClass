import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn){
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes{
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF121517),
    primaryColor: const Color(0xFF055AA3),
    iconTheme: const IconThemeData(color: Color(0xFFEDF4F8)),
    colorScheme: const ColorScheme.dark(),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFD6DFE4),
    primaryColor: const Color(0xFF055AA3),
    iconTheme: const IconThemeData(color: Color(0xFF172026)),
    colorScheme: const ColorScheme.light(),
  );
}