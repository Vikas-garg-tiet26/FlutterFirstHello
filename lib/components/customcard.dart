import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({super.key});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          card("100+", "IMPRESSIONS", "assets/HandUp.png"),
          card("99+", "CONVERSION", "assets/PositiveDynamic.png"),
          card("₹1000", "REVENUE", "assets/EuroMoney.png"),
          card("₹1000", "COMMISSION", "assets/Vector.png"),
        ],
      ),
    );
  }

  Container card(String value, String name, String imagepath) {
    return Container(
      height: MediaQuery.of(context).size.height / 7.5,
      width: MediaQuery.of(context).size.width / 1.25,
      margin: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height / 39,
        horizontal: MediaQuery.of(context).size.width / 15,
      ),
      padding: EdgeInsetsDirectional.symmetric(
        vertical: 10,
        horizontal: MediaQuery.of(context).size.width / 7,
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(183, 207, 178, 225),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 70,
                height: 70,
                child: Image.asset(
                  imagepath,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(width: 23),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    value,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 106, 17, 153),
                      fontFamily: "Inter",
                      fontSize: MediaQuery.of(context).size.width / 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 140, 77, 207),
                      fontFamily: "Inter",
                      fontSize: MediaQuery.of(context).size.width / 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
