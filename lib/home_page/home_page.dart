import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:masterclass/theme_mode/theme_mode.dart';
import 'package:masterclass/widgets/change_theme_button_widget.dart';

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
        appBar: AppBar(
          toolbarHeight: 80,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Atividades",
              ),
              Text(
                "Flutterando MasterClass",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset("assets/logos/logo_flutterando2.png", width: 40),
          ),
          actions: const [
            ChangeThemeButtonWidget(),
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
            border: Border.all(
              width: 2,
              color: const Color(0Xff51565A),
            ),
            color: Theme.of(context).primaryColor,
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
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          contActivity.toString(),
                          style: const TextStyle(),
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
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/icons/github.png", width: 20),
                        const SizedBox(width: 8),
                        const Text(
                          "Access source code",
                          style: TextStyle(
                            fontSize: 12,
                          ),
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
