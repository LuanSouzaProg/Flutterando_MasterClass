import 'package:flutter/material.dart';
import 'package:masterclass/semana_2/exc02.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black
      ),
      debugShowCheckedModeBanner: false,
      home: const Exc02(),
    );
  }
}


