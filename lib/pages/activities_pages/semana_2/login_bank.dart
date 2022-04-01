import 'package:flutter/material.dart';

class LoginBank extends StatelessWidget {
  const LoginBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Image.asset("assets/logos/logo_seam.png"),
            ),
            const SizedBox(height: 20),
            const Text(
              "Get your Money",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Under Control",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Manage you expense",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const Text(
              "Seamlessly.",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 80),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("/");
                },
                child: const Text(
                  "Sing Up With Email ID",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("/");
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Image.asset(
                        "assets/icons/google.png",
                        width: 25,
                      ),
                    ),
                    const Text(
                      "Sing Up With Google",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 60),
            const Text.rich(
              TextSpan(
                text: "Already have an account? ",
                style: TextStyle(fontSize: 16, color: Colors.white),
                children: <TextSpan>[
                  TextSpan(
                    text: "Sing in",
                    style: TextStyle(
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
