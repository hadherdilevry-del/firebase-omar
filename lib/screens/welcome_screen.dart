import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/Register_screen.dart';
import 'package:flutter_firebase/screens/signin_screen.dart';
import 'package:flutter_firebase/widgets/mybutton.dart';

class WelcomeScreen extends StatefulWidget {
  static const screenRoute = 'welecome_screen';
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  child: Image.asset(
                    "images/message.png",
                    height: 180,
                    width: 180,
                  ),
                ),
                Text(
                  "MessageMe",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff2e386b),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            MyButton(
              color: Colors.amber,
              title: "Sign in",
              onPressed: () {
                Navigator.pushNamed(context, SigninScreen.screenRoute);
              },
            ),
            MyButton(color: Colors.blue, title: "Register", onPressed: () {
              Navigator.pushNamed(context, RegisterScreen.screenRoute);
            }),
          ],
        ),
      ),
    );
  }
}
