import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass/widgets/change_theme_button_widget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
      appBar: AppBar(
        shadowColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sobre o Dev",
              style: TextStyle(
                fontSize: 22,
                color: Theme.of(context).bottomAppBarColor,
              ),
            ),
            Text(
              "Flutterando MasterClass",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).bottomAppBarColor,
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.95,
              child: Column(
                children: const [
                  CardDev(),
                  Technologies(),
                  Skills(),
                ],
              ),
            ),
          ),
        ),
      ),
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

class CardDev extends StatelessWidget {
  const CardDev({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: CircleAvatar(
                radius: 64,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 60,
                  backgroundImage:
                      AssetImage("assets/img_profile/foto_perfil.jpg"),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Luan de Souza",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      "assets/icons_profile/whatsapp.svg",
                      color: Theme.of(context).bottomAppBarColor,
                      width: 25,
                      height: 25,
                    ),
                    SvgPicture.asset(
                      "assets/icons_profile/github.svg",
                      color: Theme.of(context).bottomAppBarColor,
                      width: 25,
                      height: 25,
                    ),
                    SvgPicture.asset(
                      "assets/icons_profile/instagram.svg",
                      color: Theme.of(context).bottomAppBarColor,
                      width: 25,
                      height: 25,
                    ),
                    SvgPicture.asset(
                      "assets/icons_profile/facebook.svg",
                      color: Theme.of(context).bottomAppBarColor,
                      width: 25,
                      height: 25,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Technologies extends StatelessWidget {
  const Technologies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tecnologias Favoritas",
            style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).bottomAppBarColor,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const TechnologiesCard();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TechnologiesCard extends StatelessWidget {
  const TechnologiesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Image.asset(
                "assets/logos/logo_flutterando2.png",
                width: 40,
              ),
            ),
            const Text(
              "Flutter",
              style: TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              "Habilidades e Competências",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).bottomAppBarColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Skill(
                    skillName: "Flutter",
                    skillPercent: 0.80,
                  ),
                  Skill(
                    skillName: "Dart",
                    skillPercent: 0.75,
                  ),
                  Skill(
                    skillName: "FireBase",
                    skillPercent: 0.45,
                  ),
                  Skill(
                    skillName: "API Rest",
                    skillPercent: 0.40,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class Skill extends StatelessWidget {
  const Skill({Key? key, required this.skillName, required this.skillPercent})
      : super(key: key);
  final String skillName;
  final double skillPercent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            skillName,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          LinearPercentIndicator(
            animation: true,
            animationDuration: 1000,
            width: MediaQuery.of(context).size.width * 0.60,
            lineHeight: 10,
            percent: skillPercent,
            progressColor: Theme.of(context).primaryColor,
            backgroundColor: Theme.of(context).bottomAppBarColor,
            barRadius: const Radius.circular(20),
          ),
        ],
      ),
    );
  }
}
