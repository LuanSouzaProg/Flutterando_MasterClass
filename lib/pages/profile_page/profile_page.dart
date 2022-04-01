import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int index = 2;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.stars),
      const Icon(Icons.archive),
      const Icon(Icons.person),
    ];

    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Theme.of(context).bottomAppBarColor,
        height: 45,
        index: index,
        items: items,
        onTap: (index) {
          if (index == 0) {
            Navigator.of(context).pushReplacementNamed("/");
          }

          if (index == 1) {
            Navigator.of(context).pushReplacementNamed("/repositoryPage");
          }

          if (index == 2) {
            Navigator.of(context).pushReplacementNamed("/profilePage");
          }


        },
      ),
    );
  }
}
