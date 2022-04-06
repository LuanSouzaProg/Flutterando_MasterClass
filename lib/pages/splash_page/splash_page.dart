import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3))
        .then((_) => Navigator.of(context).pushReplacementNamed("/homePage"));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF121517),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Image.asset("assets/logos/logo_flutterando.png"),
        ),
      ),
    );
  }
}

