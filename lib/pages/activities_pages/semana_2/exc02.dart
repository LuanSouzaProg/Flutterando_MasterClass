import 'package:flutter/material.dart';

class Exc02 extends StatelessWidget {
  const Exc02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(232, 102, 94, 1),
        shadowColor: Colors.transparent,
        leading: const Icon(Icons.arrow_back),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromRGBO(235, 102, 94, 1),
              Color.fromRGBO(232, 67, 113, 1),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset(
                      "assets/logos/tinder.png",
                      width: 35,
                    ),
                  ),
                  const Text(
                    "Tinder",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60),
              const Text(
                "By tapping Create Account or Sing In, you agree to our",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Terms",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ". Learn how we process you data in our ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Privacy",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Policy",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    " and ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Cookies Policy",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Button(
                text: "SING IN WITH APPLE",
                image: "assets/icons/apple.png",
              ),
              const Button(
                text: "SING IN WITH FACEBOOK",
                image: "assets/icons/facebook_white.png",
              ),
              const Button(
                text: "SING IN WITH PHONE NUMBER",
                image: "assets/icons/chat.png",
              ),
              const SizedBox(height: 30),
              const Text(
                "Trouble Signing In?",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key? key, required this.text, required this.image})
      : super(key: key);
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 50,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.transparent),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: const BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
              ),
            ),
          ),
          onPressed: () {},
          child: Row(
            children: [
              Image.asset(
                image,
                width: 20,
                color: Colors.white,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(text),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
