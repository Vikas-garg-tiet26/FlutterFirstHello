// import 'dart:ui';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
                decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 206, 164, 231),
              Color.fromRGBO(255, 255, 255, 1),
            ],
          ),
         
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/1.png',
             
            ),
            const SizedBox(
                
                ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 122, 80, 191),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  padding: const EdgeInsets.only(
                      left: 70, top: 10, bottom: 10, right: 70)),
              child: const Text(
                'Get Started',
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
