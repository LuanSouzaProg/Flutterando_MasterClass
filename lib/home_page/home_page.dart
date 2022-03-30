import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.stars),
      const Icon(Icons.archive),
      const Icon(Icons.person),
    ];

    return Scaffold(
        extendBody: true,
        backgroundColor: const Color(0Xff121517),
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: const Color(0XffEDF4F8),
          toolbarHeight: 80,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Atividades",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Flutterando MasterClass",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset("assets/logos/logo_flutterando2.png", width: 40),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.dark_mode,
                size: 30,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              CardActivity(
                infoActivity: 'Semana 02 - Componentes do Flutter',
                nameActivity: 'Componentes do Flutter',
                contActivity: 4,
              ),
              CardActivity(
                infoActivity: 'Primeira atividade da MasterClass',
                nameActivity: 'Atividade 01',
                contActivity: 4,
              ),
              CardActivity(
                infoActivity: 'Primeira atividade da MasterClass',
                nameActivity: 'Atividade 01',
                contActivity: 4,
              ),
              CardActivity(
                infoActivity: 'Primeira atividade da MasterClass',
                nameActivity: 'Atividade 01',
                contActivity: 4,
              ),
              CardActivity(
                infoActivity: 'Primeira atividade da MasterClass',
                nameActivity: 'Atividade 01',
                contActivity: 4,
              ),
              CardActivity(
                infoActivity: 'Primeira atividade da MasterClass',
                nameActivity: 'Atividade 01',
                contActivity: 4,
              ),
              SizedBox(height: 80),
            ],
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          color: const Color(0XffEDF4F8),
          backgroundColor: Colors.transparent,
          height: 60,
          index: index,
          items: items,
        ));
  }
}

class CardActivity extends StatelessWidget {
  const CardActivity(
      {Key? key,
      required this.nameActivity,
      required this.contActivity,
      required this.infoActivity})
      : super(key: key);
  final String nameActivity;
  final int contActivity;
  final String infoActivity;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0Xff51565A),
            border: Border.all(
              width: 2,
              color: const Color(0Xff51565A),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          width: MediaQuery.of(context).size.width * 0.95,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          child: Icon(Icons.person),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          nameActivity,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          "Exercises:",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          contActivity.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      infoActivity,
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/icons/github.png",
                            width: 20, color: Colors.white),
                        const SizedBox(width: 8),
                        const Text(
                          "Access source code",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                      ),
                      child: const Text(
                        "View more",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
