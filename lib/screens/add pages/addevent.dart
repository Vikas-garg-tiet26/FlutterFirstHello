import 'package:flutter/material.dart';
import 'package:notatmrp/components/costomappbar2.dart';
import 'package:notatmrp/components/uploadiamge.dart';

const List<String> list = <String>['Clothing', 'Gadgets', 'Food', 'Other'];

class Addevent extends StatefulWidget {
  const Addevent({Key? key}) : super(key: key);

  @override
  _AddeventState createState() => _AddeventState();
}

class _AddeventState extends State<Addevent> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
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
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  margin: const EdgeInsets.only(left: 50, top: 20),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Event Name',
                      style: TextStyle(
                          color: Color.fromRGBO(102, 176, 244, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  height: 65,
                  padding: const EdgeInsets.symmetric(horizontal: 1),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.35),
                        spreadRadius: 3,
                        blurRadius: 2,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(40),
                    color: Color.fromRGBO(245, 245, 245, 1),
                  ),
                  child: TextFormField(
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50, top: 20),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Description',
                      style: TextStyle(
                          color: Color.fromRGBO(102, 176, 244, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  height: 65,
                  padding: const EdgeInsets.symmetric(horizontal: 1),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.35),
                        spreadRadius: 3,
                        blurRadius: 2,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(40),
                    color: Color.fromRGBO(245, 245, 245, 1),
                  ),
                  child: TextFormField(
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50, top: 20),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Business hour',
                      style: TextStyle(
                          color: Color.fromRGBO(102, 176, 244, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  height: 65,
                  padding: const EdgeInsets.symmetric(horizontal: 1),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.35),
                        spreadRadius: 3,
                        blurRadius: 2,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(40),
                    color: Color.fromRGBO(245, 245, 245, 1),
                  ),
                  child: TextFormField(
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50, top: 20),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Category',
                      style: TextStyle(
                          color: Color.fromRGBO(102, 176, 244, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width / 1.8,
                    height: MediaQuery.of(context).size.height / 13,
                    margin: EdgeInsets.only(right: 100, top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: FloatingActionButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    )),
                Container(
                  margin: const EdgeInsets.only(left: 50, top: 20),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Image',
                      style: TextStyle(
                          color: Color.fromRGBO(102, 176, 244, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 50),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  alignment: Alignment.centerLeft,
                  child: ImageUploadScreen(),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 15,
                  margin: const EdgeInsets.only(top: 50, bottom: 20),
                  child: FloatingActionButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {},
                    backgroundColor: const Color.fromRGBO(124, 57, 208, 1),
                    child: const Text(
                      'SUBMIT',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                )
              ]),
            )),
      ),
    );
  }
}
