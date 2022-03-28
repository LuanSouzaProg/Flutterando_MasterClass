import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
              "Activities",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Flutterando MasterClass",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        leading: const Icon(
          Icons.home,
          size: 50,
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
        child: Column(
          children: const [
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
            CardActivity(
              infoActivity: 'Primeira atividade da MasterClass',
              nameActivity: 'Atividade 01',
              contActivity: 4,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0Xff121517),
        fixedColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_history,
              color: Colors.white,
              size: 30,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_history,
              color: Colors.white,
              size: 30,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_history,
              color: Colors.white,
              size: 30,
            ),
            label: "Home",
          ),
        ],
      ),
    );
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
            color: const Color(0Xff172026),
            border: Border.all(
              width: 2,
              color: const Color(0Xff172026),
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
                      children: const [
                        Icon(
                          Icons.location_history,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Text(
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
