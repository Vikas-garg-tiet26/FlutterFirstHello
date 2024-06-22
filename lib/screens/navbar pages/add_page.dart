import 'package:flutter/material.dart';
import 'package:notatmrp/components/costomappbar2.dart';
import 'package:notatmrp/components/customstore.dart';
import 'package:notatmrp/screens/add pages/addstore.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: CustomAppBar2(),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Color.fromRGBO(166, 112, 225, .02),
                ],
              ),
            ),
            height: double.infinity,
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, bottom: 10),
                      child: Text(
                        'Select store',
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(57, 36, 103, 1)),
                      ),
                    ),
                    Customstore(),
                    Customstore(),
                    Container(
                      width: 200,
                      child: FloatingActionButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60)),
                          backgroundColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Addstore()),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_outlined,
                                size: 30,
                                color: Color.fromRGBO(102, 176, 244, 1),
                              ),
                              Text(
                                "Add Store",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  color: Color.fromRGBO(102, 176, 244, 1),
                                ),
                              ),
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
