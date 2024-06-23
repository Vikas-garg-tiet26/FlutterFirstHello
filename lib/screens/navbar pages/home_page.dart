import 'package:flutter/material.dart';
import 'package:notatmrp/components/costomappbar2.dart';
import 'package:notatmrp/components/customcard.dart';

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(),
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 236, 218, 247),
              Color.fromRGBO(255, 255, 255, 1),
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const SingleChildScrollView(
          child: Column(
            children: [
              CustomCard(),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: HomePage(),
    ),
  );
}
