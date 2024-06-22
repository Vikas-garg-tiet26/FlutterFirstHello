import 'package:flutter/material.dart';
import 'package:notatmrp/components/costomappbar2.dart';
import 'package:notatmrp/screens/add pages/addevent.dart';

class EventTablePage extends StatefulWidget {
  const EventTablePage({super.key});

  @override
  State<EventTablePage> createState() => _EventTablePageState();
}

class _EventTablePageState extends State<EventTablePage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(),
      body: Container(
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
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Addevent()),
                  );
                },
                child: const Text(
                  "+ Add Event",
                  style: TextStyle(
                    color: Color.fromRGBO(102, 176, 244, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.4,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(166, 112, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(166, 112, 255, 1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Events List",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Table(
                          border: TableBorder.all(
                            color: const Color.fromRGBO(166, 112, 255, 1),
                          ),
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          children: [
                            TableRow(
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(242, 242, 242, 1),
                                ),
                                children: [
                                  TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Text("Event Name"),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Text("Start Date"),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Text("Expire Date"),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Text("Action"),
                                    ),
                                  ),
                                ]),
                            ...List.generate(
                              3,
                              (index) => TableRow(
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(166, 112, 255, 1),
                                ),
                                children: [
                                  TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Text("Cell 1"),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Text("Cell 1"),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Text("Cell 1"),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Container(
                                      child: Row(
                                        children: [
                                          // TextButton(
                                          //   onPressed: () {},
                                          //   child: Text("Edit"),
                                          // ),
                                          Switch(
                                            value: isSwitched,
                                            onChanged: (value) {
                                              setState(
                                                () {
                                                  isSwitched = value;
                                                },
                                              );
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
