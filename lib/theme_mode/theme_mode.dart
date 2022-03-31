import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn){
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes{
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF121517),
    appBarTheme: const AppBarTheme(color: Color(0xFF121517)),
    primaryColor: const Color(0xFF055AA3),
    cardColor: const Color(0xFF172026),
    iconTheme: const IconThemeData(color: Color(0xFF121517)),
    colorScheme: const ColorScheme.dark(primary: Color(0xFF055AA3)),
    textSelectionTheme: const TextSelectionThemeData(selectionColor: Color(0xFFEDF4FB))
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFD6DFE4),
    appBarTheme: const AppBarTheme(color: Color(0xFFD6DFE4)),
    cardColor: const Color(0xFFEDF4FB),
    primaryColor: const Color(0xFF055AA3),
    iconTheme: const IconThemeData(color: Color(0xFF121517)),
    colorScheme: const ColorScheme.light(primary: Color(0xFF055AA3)),
      textSelectionTheme: const TextSelectionThemeData(selectionColor: Color(0xFF121517))
  );
}