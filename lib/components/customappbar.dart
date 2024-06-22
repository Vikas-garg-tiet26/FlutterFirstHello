import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
    CustomAppBar({Key, key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

    @override
    final Size preferredSize; // default is 56.0

    @override
    _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>{

    @override
    Widget build(BuildContext context) {
        return AppBar(
          backgroundColor:Colors.white,
          title: Image.asset(
            'assets/logo.png',
            width: 200,
          ),
        );
    }
}
