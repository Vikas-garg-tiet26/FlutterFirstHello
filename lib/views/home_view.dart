import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(255, 72, 70, 63),
      child: Container(
          child: Center(
              child: Text(
        "Hello Daart",
        style: TextStyle(
          fontSize: 50,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ))),
    );
  }
}
