import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/Register_screen.dart';

import 'package:flutter_firebase/screens/caht_screen.dart';
import 'package:flutter_firebase/screens/signin_screen.dart';
import 'package:flutter_firebase/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'massaggeApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      //home: CahtScreen(),
      initialRoute: WelcomeScreen.screenRoute,
      routes: {
        WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
        SigninScreen.screenRoute: (context) => SigninScreen(),
        RegisterScreen.screenRoute: (context) => RegisterScreen(),
        CahtScreen.screenRoute: (context) => CahtScreen(),
      },
    );
  }
}
