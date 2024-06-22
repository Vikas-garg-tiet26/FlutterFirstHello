import 'package:flutter/material.dart';
import 'package:notatmrp/components/costomappbar2.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar2(),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Color.fromRGBO(166, 112, 225, .02),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(children: [
              //qrcodewidget
              Center(
                child: Container(
                  width: 250,
                  padding: const EdgeInsets.all(2),
                  child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: Text(
                      'Search using email',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 20,
                        fontWeight: FontWeight.w800,
                        color: const Color.fromRGBO(102, 176, 244, 1),
                      ),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ));
  }
}
