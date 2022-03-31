import 'package:flutter/material.dart';

class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xff121517),
      appBar: AppBar(
        backgroundColor: const Color(0Xff121517),
        toolbarHeight: 80,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Semana - 02",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Flutterando MasterClass",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            size: 25,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.dark_mode,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: const [
              Activity(nameActivity: "Atividade 01", cont: 1),
              Activity(nameActivity: "Atividade 02", cont: 2),
              Activity(nameActivity: "Atividade 03", cont: 3),
              Activity(nameActivity: "Atividade 04", cont: 4),
            ],
          ),
        ),
      ),
    );
  }
}

class Activity extends StatelessWidget {
  const Activity({Key? key, required this.nameActivity, required this.cont})
      : super(key: key);
  final int cont;
  final String nameActivity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              const Color(0Xff172026),
            ),
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
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
