import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/home_view.dart';

class Myapp extends StatelessWidget {
  const Myapp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: "Flutter Learn",
      home: HomeView(),
    );
  }
}
