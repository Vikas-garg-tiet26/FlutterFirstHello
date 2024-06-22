import 'package:flutter/material.dart';
import 'package:notatmrp/components/customnavbar.dart';
import 'package:notatmrp/screens/menu%20pages/coupen_page.dart';
import 'package:notatmrp/screens/menu%20pages/deal_page.dart';
import 'package:notatmrp/screens/menu%20pages/event_page.dart';
import 'package:notatmrp/screens/menu%20pages/invoice.dart';
import 'package:notatmrp/screens/menu%20pages/owner_page.dart';
import 'package:notatmrp/screens/menu%20pages/product_page.dart';

class Coustemappdrawer extends StatefulWidget {
  const Coustemappdrawer({Key? key}) : super(key: key);

  @override
  _CoustemappdrawerState createState() => _CoustemappdrawerState();
}

class _CoustemappdrawerState extends State<Coustemappdrawer> {
  int _selectedIndex = 0;
  List<Widget> pages = [
    const CoupenPage(),
    const DealPage(),
    const ProductPage(),
    const EventTablePage(),
    const Invoice(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // width: double.infinity,
      backgroundColor: const Color.fromRGBO(255, 255, 255, 0.95),
      child: Column(
        children: [
          DrawerHeader(
              child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Color.fromRGBO(166, 112, 255, 1),
                    size: 35,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Customnavbar(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.home_outlined,
                    color: Color.fromRGBO(166, 112, 255, 1),
                    size: 35,
                  ),
                ),
              ],
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(bottom: 8, right: 10),
            child: ListTile(
              shape: const RoundedRectangleBorder(
                //<-- SEE HERE

                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(39),
                    bottomRight: Radius.circular(39)),
              ),
              tileColor: const Color.fromRGBO(166, 112, 255, 0.4),
              title: const Text(
                "Manage",
                style: TextStyle(
                  color: Color.fromRGBO(166, 112, 255, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8, right: 10),
            child: ListTile(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(39),
                    bottomRight: Radius.circular(39)),
              ),
              tileColor: const Color.fromRGBO(166, 112, 255, 0.4),
              title: const Text(
                "Add coupon",
                style: TextStyle(
                  color: Color.fromRGBO(166, 112, 255, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                _onItemTapped(1);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CoupenPage()),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8, right: 10),
            child: ListTile(
              shape: const RoundedRectangleBorder(
                //<-- SEE HERE

                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(39),
                    bottomRight: Radius.circular(39)),
              ),
              tileColor: const Color.fromRGBO(166, 112, 255, 0.4),
              title: const Text(
                "Add event",
                style: TextStyle(
                  color: Color.fromRGBO(166, 112, 255, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                _onItemTapped(2);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EventTablePage()),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8, right: 10),
            child: ListTile(
              shape: const RoundedRectangleBorder(
                //<-- SEE HERE

                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(39),
                    bottomRight: Radius.circular(39)),
              ),
              tileColor: const Color.fromRGBO(166, 112, 255, .4),
              title: const Text(
                "Add product",
                style: TextStyle(
                  color: Color.fromRGBO(166, 112, 255, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                _onItemTapped(3);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductPage()),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8, right: 10),
            child: ListTile(
              shape: const RoundedRectangleBorder(
                //<-- SEE HERE

                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(39),
                    bottomRight: Radius.circular(39)),
              ),
              tileColor: const Color.fromRGBO(166, 112, 255, 0.4),
              title: const Text(
                "Add Owner",
                style: TextStyle(
                  color: Color.fromRGBO(166, 112, 255, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                _onItemTapped(3);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OwnerPage()),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8, right: 10),
            child: ListTile(
              shape: const RoundedRectangleBorder(
                //<-- SEE HERE

                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(39),
                    bottomRight: Radius.circular(39)),
              ),
              tileColor: const Color.fromRGBO(166, 112, 255, 0.4),
              title: const Text(
                "Commission Rate",
                style: TextStyle(
                  color: Color.fromRGBO(166, 112, 255, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                _onItemTapped(3);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Invoice()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildListTile({
    required String title,
    required int index,
    required VoidCallback onPressed,
  }) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Color.fromRGBO(166, 112, 225, .02),
          ],
        ),
      ),
      child: ListTile(
        leading:
            Icon(Icons.abc, size: 35, color: Color.fromARGB(255, 124, 57, 208)),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 124, 57, 208)),
        ),
        selected: _selectedIndex == index,
        onTap: onPressed,
      ),
    );
  }
}
