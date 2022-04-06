import 'package:flutter/material.dart';
import 'package:masterclass/pages/%20repository_page/repository_page.dart';
import 'package:masterclass/pages/activities_pages/activities_page.dart';
import 'package:masterclass/pages/activities_pages/semana_2/login_bank.dart';
import 'package:masterclass/pages/activities_pages/semana_2/login_tinder.dart';
import 'package:masterclass/pages/home_page/home_page.dart';
import 'package:masterclass/pages/profile_page/profile_page.dart';
import 'package:masterclass/pages/splash_page/splash_page.dart';
import 'package:masterclass/theme_mode/theme_mode.dart';
import 'package:provider/provider.dart';

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
        initialRoute: "/splashPage",
        routes: {
          "/splashPage": (context) => const SplashPage(),
          "/homePage": (context) => const HomePage(),
          "/actives": (context) => const ActivitiesPage(),
          "/loginBank": (context) => const LoginBank(),
          "/loginTinder": (context) => const LoginTinder(),
          "/profilePage": (context) => const ProfilePage(),
          "/repositoryPage": (context) => const RepositoryPage(),
        },
      );
    },
  );
}