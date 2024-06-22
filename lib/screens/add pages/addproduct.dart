import "package:flutter/material.dart";
import 'package:notatmrp/components/costomappbar2.dart';
import 'package:notatmrp/components/uploadiamge.dart';

const List<String> list = <String>[
  'One',
  'Clothing',
  'Gadgets',
  'Food',
  'Other'
];

class Addproduct extends StatefulWidget {
  const Addproduct({ Key? key }) : super(key: key);

  @override
  _AddproductState createState() => _AddproductState();
}

class _AddproductState extends State<Addproduct> {
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
              margin: const EdgeInsets.only(left: 10, top: 25),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Product Name',
                  style: TextStyle(
                      color: Color.fromRGBO(102, 176, 244, 1),
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(245, 245, 245, 1),
              ),
              child: TextFormField(
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 25),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Category',
                  style: TextStyle(
                      color: Color.fromRGBO(102, 176, 244, 1),
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 25),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Description',
                  style: TextStyle(
                      color: Color.fromRGBO(102, 176, 244, 1),
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(245, 245, 245, 1),
              ),
              child: TextFormField(
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 25),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Logo',
                  style: TextStyle(
                      color: Color.fromRGBO(102, 176, 244, 1),
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Container(
              child: ImageUploadScreen(),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 25),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Start Date',
                  style: TextStyle(
                      color: Color.fromRGBO(102, 176, 244, 1),
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(245, 245, 245, 1),
              ),
              child: TextFormField(
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 25),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'End Date',
                  style: TextStyle(
                      color: Color.fromRGBO(102, 176, 244, 1),
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(245, 245, 245, 1),
              ),
              child: TextFormField(
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 15,
              margin: const EdgeInsets.only(top: 50, bottom: 20),
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: const Color.fromRGBO(124, 57, 208, 1),
                child: const Text(
                  'SUBMIT',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
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