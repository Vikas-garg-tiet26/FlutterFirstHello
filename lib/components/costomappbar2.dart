import 'package:flutter/material.dart';

class CustomAppBar2 extends StatefulWidget implements PreferredSizeWidget {
    CustomAppBar2({Key, key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

    @override
    final Size preferredSize; // default is 56.0

    @override
    _CustomAppBar2State createState() => _CustomAppBar2State();
}

class _CustomAppBar2State extends State<CustomAppBar2>{

    @override
    Widget build(BuildContext context) {
        return AppBar(
      title: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Hi Chirag",
              style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(124, 57, 208, 1),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: MediaQuery.of(context).size.width / 16,
              child: Image.asset('assets/appbaricon.png'),
            )
          ],
        ),
      ),
    );
  }
}
