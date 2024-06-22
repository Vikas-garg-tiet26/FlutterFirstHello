import 'package:flutter/material.dart';
import 'package:notatmrp/screens/navbar%20pages/home_page.dart';

class Customappbar3 extends StatefulWidget implements PreferredSizeWidget {
  Customappbar3({Key, key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _Customappbar3State createState() => _Customappbar3State();
}

class _Customappbar3State extends State<Customappbar3> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Container(
      alignment: Alignment.centerRight,
      child: IconButton(
        onPressed: () {
          MaterialPageRoute(builder: (context) => const HomePage());
        },
        icon: Icon(
          Icons.home_outlined,
          color: Color.fromRGBO(124, 57, 208, 100),
        ),
      ),
    ));
  }
}
