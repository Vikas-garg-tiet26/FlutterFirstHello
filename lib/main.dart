import 'package:flutter/material.dart';
import 'package:notatmrp/screens/forgotpassword.dart';
import 'package:notatmrp/screens/login.dart';
import 'package:notatmrp/screens/navbar%20pages/home_page.dart';
import 'package:notatmrp/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SplashScreen(),
        "/login": (context) => const Login(),
        "/forgotpassword": (context) => const Forgotpassword(),
        "/homepage": (context) => const HomePage(),
      },
    );
  }
}
