import 'package:flutter/material.dart';
import 'package:masterclass/theme_mode/theme_mode.dart';
import 'package:provider/provider.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  const ChangeThemeButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    if (themeProvider.isDarkMode) {
      return IconButton(
        icon: const Icon(Icons.light_mode),
        onPressed: () {
          final provider = Provider.of<ThemeProvider>(context, listen: false);
          provider.toggleTheme(false);
        },
      );
    } else {
      return IconButton(
        icon: const Icon(Icons.dark_mode, color: Colors.black,),
        onPressed: () {
          final provider = Provider.of<ThemeProvider>(context, listen: false);
          provider.toggleTheme(true);
        },
      );
    }
    // return Switch.adaptive(
    //   value: themeProvider.isDarkMode,
    //   onChanged: (value) {
    //     final provider = Provider.of<ThemeProvider>(context, listen: false);
    //     provider.toggleTheme(value);
    //   },
    // );
  }
}
