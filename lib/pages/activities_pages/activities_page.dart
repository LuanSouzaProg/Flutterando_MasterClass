import 'package:flutter/material.dart';
import 'package:masterclass/widgets/change_theme_button_widget.dart';

class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Semana - 02",
              style: TextStyle(
                  fontSize: 18, color: Theme.of(context).bottomAppBarColor),
            ),
            Text(
              "Flutterando MasterClass",
              style: TextStyle(
                  fontSize: 16, color: Theme.of(context).bottomAppBarColor),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed("/");
          },
          icon: Icon(
            Icons.arrow_back,
            size: 25,
            color: Theme.of(context).bottomAppBarColor,
          ),
        ),
        actions: const [
          ChangeThemeButtonWidget(),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: const [
              Activity(nameActivity: "Atividade 01", cont: 1, route: "/loginBank",),
              Activity(nameActivity: "Atividade 02", cont: 2, route: "/loginTinder",),
            ],
          ),
        ),
      ),
    );
  }
}

class Activity extends StatelessWidget {
  const Activity(
      {Key? key,
      required this.nameActivity,
      required this.cont,
      required this.route})
      : super(key: key);
  final int cont;
  final String nameActivity;
  final String route;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(route);
          },
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(cont.toString()),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text(
                  nameActivity,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
