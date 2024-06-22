import 'package:flutter/material.dart';
import 'package:notatmrp/screens/navbar%20pages/add_page.dart';
import 'package:notatmrp/screens/navbar%20pages/home_page.dart';
import 'package:notatmrp/screens/navbar%20pages/managepage.dart';
import 'package:notatmrp/screens/navbar%20pages/sales_page.dart';
import 'package:notatmrp/screens/navbar%20pages/scan_page.dart';

class Customnavbar extends StatefulWidget implements PreferredSizeWidget {
  const Customnavbar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);
  @override
  final Size preferredSize;
  @override
  _CustomnavbarState createState() => _CustomnavbarState();
}

class _CustomnavbarState extends State<Customnavbar> {
  int _selectedIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const SearchPage(),
    const ScanPage(),
    const SalesPage(),
    const AddPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[_selectedIndex],
        bottomNavigationBar: Container(
          // margin: const EdgeInsets.only(bottom: 10, left: 6, right: 6),
          child: ClipRRect(
            // borderRadius: BorderRadius.circular(40),
            child: BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: (value) {
                setState(() {
                  _selectedIndex = value;
                });
              },
              elevation: 0,
              selectedItemColor: Colors.white,
              selectedIconTheme: const IconThemeData(opacity: .5),
              unselectedIconTheme: const IconThemeData(opacity: 10),
              showUnselectedLabels: false,
              showSelectedLabels: false,
              iconSize: 40,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  backgroundColor: Color.fromRGBO(124, 57, 208, 1),
                  icon: Image.asset("assets/home_icon.png"),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Color.fromRGBO(124, 57, 208, 1),
                  icon: Image.asset("assets/search.png"),
                  label: 'Manage',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Color.fromRGBO(124, 57, 208, 1),
                  icon: Image.asset("assets/scan_icon.png"),
                  label: 'Scan',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Color.fromRGBO(124, 57, 208, 1),
                  icon: Image.asset("assets/cart_icon.png"),
                  label: 'Outlet',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Color.fromRGBO(124, 57, 208, 1),
                  icon: Image.asset("assets/store_icon.png"),
                  label: 'Sales',
                ),
              ],
            ),
          ),
        ));
  }
}
