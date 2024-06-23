import "package:flutter/material.dart";
import "package:notatmrp/components/CustomAppBar.dart";
import "package:notatmrp/components/customnavbar.dart";
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool visiblepassword = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: CustomAppBar(),
          body: Container(
            margin: const EdgeInsets.only(top: 1),
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color.fromARGB(0, 198, 195, 255),
                  Color.fromRGBO(255, 255, 255, 1),
                ],
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 25, top: 25),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Welcome',
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.width / 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Grow your business with us',
                        style: GoogleFonts.inter(
                            color: const Color.fromARGB(255, 122, 64, 150),
                            fontSize: MediaQuery.of(context).size.width / 25,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 12,
                  ),
                  Form(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 50, top: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Enter your Number',
                              style: GoogleFonts.inter(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontSize:
                                      MediaQuery.of(context).size.width / 25,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          height: MediaQuery.of(context).size.height / 16,
                          padding: const EdgeInsets.symmetric(horizontal: 1),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.35),
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(40),
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 20,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40)),
                            ),
                          ),
                        ),
                        // Container(
                        //   margin: const EdgeInsets.only(left: 50, top: 25),
                        //   child: Align(
                        //     alignment: Alignment.topLeft,
                        //     child: Text(
                        //       'Password',
                        //       style: TextStyle(
                        //           color: const Color.fromRGBO(102, 176, 244, 1),
                        //           fontSize:
                        //               MediaQuery.of(context).size.width / 20,
                        //           fontWeight: FontWeight.w700),
                        //     ),
                        //   ),
                        // ),
                        // Container(
                        //   width: MediaQuery.of(context).size.width - 50,
                        //   height: MediaQuery.of(context).size.height / 16,
                        //   padding: const EdgeInsets.symmetric(horizontal: 1),
                        //   margin: const EdgeInsets.all(10),
                        //   decoration: BoxDecoration(
                        //     boxShadow: [
                        //       BoxShadow(
                        //         color: Colors.grey.withOpacity(0.35),
                        //         spreadRadius: 3,
                        //         blurRadius: 2,
                        //         offset: const Offset(
                        //             0, 3), // changes position of shadow
                        //       ),
                        //     ],
                        //     borderRadius: BorderRadius.circular(40),
                        //     color: const Color.fromRGBO(245, 245, 245, 1),
                        //   ),
                        //   child: TextFormField(
                        //     obscureText: visiblepassword,
                        //     style: TextStyle(
                        //       fontSize: MediaQuery.of(context).size.width / 20,
                        //       fontWeight: FontWeight.w400,
                        //     ),
                        //     decoration: InputDecoration(
                        //       suffixIcon: IconButton(
                        //         onPressed: () {
                        //           setState(() {
                        //             visiblepassword = !visiblepassword;
                        //           });
                        //         },
                        //         icon: Icon(visiblepassword
                        //             ? Icons.remove_red_eye_rounded
                        //             : Icons.remove_red_eye_outlined),
                        //         color: const Color.fromARGB(255, 34, 141, 228),
                        //       ),
                        //       border: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(40)),
                        //     ),
                        //   ),
                        // ),
                        // TextButton(
                        //   onPressed: () {
                        //     Navigator.pushNamed(context, "/forgotpassword");
                        //   },
                        //   child: Container(
                        //     margin: const EdgeInsets.only(right: 10, top: 10),
                        //     alignment: Alignment.centerRight,
                        //     child: Text(
                        //       'forgot password',
                        //       style: TextStyle(
                        //           color: const Color.fromRGBO(102, 176, 244, 1),
                        //           fontSize:
                        //               MediaQuery.of(context).size.width / 27,
                        //           fontWeight: FontWeight.w600),
                        //     ),
                        //   ),
                        // ),
                        // TextButton(
                        //   onPressed: () {},
                        //   child: Container(
                        //     margin: const EdgeInsets.only(top: 20),
                        //     child: Text(
                        //       'Create an account',
                        //       style: TextStyle(
                        //           fontSize:
                        //               MediaQuery.of(context).size.width / 22,
                        //           fontWeight: FontWeight.w600,
                        //           color: const Color.fromRGBO(57, 36, 104, 1)),
                        //     ),
                        //   ),
                        // ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.25,
                          height: MediaQuery.of(context).size.height / 17,
                          margin: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height * 0.001,
                          ),
                          child: FloatingActionButton(
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  width: 3,
                                  color: Color.fromRGBO(125, 57, 208, 0.318),
                                ),
                                borderRadius: BorderRadius.circular(100)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Customnavbar(),
                                ),
                              );
                            },
                            backgroundColor: Color.fromARGB(196, 124, 8, 240),
                            child: Text(
                              'Send OTP',
                              style: GoogleFonts.inter(
                                fontSize:
                                    MediaQuery.of(context).size.width / 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
