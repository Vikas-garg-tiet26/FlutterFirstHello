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
          card("11", "IMPRESSIONS", "assets/hand_up.svg"),
          card("11", "CONVERSION", "assets/positive_dynamic.svg"),
          card("₹1000", "REVENUE", "assets/euro_money.svg"),
          card("₹1000", "COMMISSION", "assets/Vector.svg"),
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
        color: const Color.fromRGBO(124, 57, 208, 1),
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
                child: SvgPicture.asset(imagepath),
              ),
              const SizedBox(width: 23),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    value,
                    style: TextStyle(
                      color: const Color.fromRGBO(244, 213, 102, 1),
                      fontFamily: "Inter",
                      fontSize: MediaQuery.of(context).size.width / 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
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
