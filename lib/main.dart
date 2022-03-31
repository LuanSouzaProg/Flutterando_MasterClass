import 'package:flutter/material.dart';
import 'package:masterclass/pages/home_page/home_page.dart';

import 'package:masterclass/theme_mode/theme_mode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    builder: (context, _){
      final themeProvider = Provider.of<ThemeProvider>(context);

      return MaterialApp(
        title: 'Flutter Demo',
        themeMode: themeProvider.themeMode,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      );
    },
  );
}

