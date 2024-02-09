import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.amberAccent,
      // color: Color.fromARGB(255, 72, 70, 63),
      child: Center(
        child: Text("Hello Woerrld",
            style: TextStyle(
              fontSize: 50,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              
            )),
      ),
    );
  }
}
