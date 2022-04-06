import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class RepositoryPage extends StatefulWidget {
  const RepositoryPage({Key? key}) : super(key: key);

  @override
  State<RepositoryPage> createState() => _RepositoryPageState();
}

class _RepositoryPageState extends State<RepositoryPage> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.stars),
      const Icon(Icons.archive),
      const Icon(Icons.person),
    ];

    return Scaffold(
      backgroundColor: Colors.green,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Theme.of(context).bottomAppBarColor,
        height: 45,
        index: index,
        items: items,
        onTap: (index) {
          if (index == 0) {
            Navigator.of(context).pushReplacementNamed("/homePage");
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
