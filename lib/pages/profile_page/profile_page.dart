import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass/widgets/change_theme_button_widget.dart';

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
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.95,
          child: Column(
            children: const [
              CardDev(),
            ],
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
                  backgroundImage: AssetImage("assets/img_profile/foto_perfil.jpg"),
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
