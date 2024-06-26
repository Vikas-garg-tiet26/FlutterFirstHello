import 'package:flutter/material.dart';
import 'package:notatmrp/screens/login/signup.dart/forgotpassword.dart';
// import 'package:notatmrp/screens/login/signup.dart/forgotpassword1.dart';
import 'package:notatmrp/screens/login/signup.dart/location.dart';
import 'package:notatmrp/screens/login/signup.dart/login.dart';
// import 'package:notatmrp/screens/login.dart';
// import 'package:notatmrp/screens/login/signup.dart/login1.dart';
import 'package:notatmrp/screens/navbar%20pages/home_page.dart';
import 'package:notatmrp/screens/login/signup.dart/splash_screen.dart';

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
        "/location": (context) => const Location(),
        "/otp": (context) => const otp(),
        "/homepage": (context) => const HomePage(),
      },
    );
  }
}
