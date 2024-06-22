import 'package:flutter/material.dart';

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
            const SizedBox(),
            // -----------------------------------------------------------------------
            Image.asset(
              'assets/1.png',
            ),
            // --------------------------
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 122, 80, 191),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  padding: const EdgeInsets.only(
                      left: 100, top: 15, bottom: 15, right: 100)),
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
