import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.amberAccent,
        child: Container(
            child: Center(
                child: Text(
          "Hello Dart",
          style: TextStyle(
            fontSize: 50,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ))),
      );
  }
}