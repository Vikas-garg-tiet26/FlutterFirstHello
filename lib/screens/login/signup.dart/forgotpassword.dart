import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notatmrp/components/CustomAppBar.dart';
import 'package:pinput/pinput.dart';

class otp extends StatefulWidget {
  const otp({Key? key}) : super(key: key);

  @override
  _otpState createState() => _otpState();
}

class _otpState extends State<otp> {
  // bool show = true;
  // String name = "SEND CODE";
  double mar = 0.22;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Container(
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
                  margin: const EdgeInsetsDirectional.only(top: 30),
                  child: Text(
                    'Just one more step!',
                    style: GoogleFonts.montserrat(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: MediaQuery.of(context).size.width / 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Container(
                  margin: const EdgeInsetsDirectional.only(top: 20),
                  child: Text(
                    'We sent you a 6-digit Code ',
                    style: GoogleFonts.montserrat(
                        color: const Color.fromRGBO(124, 57, 208, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: MediaQuery.of(context).size.width / 24),
                  ),
                ),
                // Column(
                //   children: [
                // Container(
                //   margin: const EdgeInsets.only(left: 50, top: 30),
                //   child: Align(
                //     alignment: Alignment.topLeft,
                //     child: Text(
                //       'Email',
                //       style: TextStyle(
                //         color: const Color.fromRGBO(102, 176, 244, 1),
                //         fontSize:
                //             MediaQuery.of(context).size.width / 20,
                //         fontWeight: FontWeight.w700,
                //       ),
                //     ),
                //   ),
                //     // ),
                //     Container(
                //       width: MediaQuery.of(context).size.width - 50,
                //       height: MediaQuery.of(context).size.height / 16,
                //       padding: const EdgeInsets.symmetric(horizontal: 1),
                //       margin: const EdgeInsets.all(10),
                //       decoration: BoxDecoration(
                //         boxShadow: [
                //           BoxShadow(
                //             color: Colors.grey.withOpacity(0.35),
                //             spreadRadius: 3,
                //             blurRadius: 2,
                //             offset: const Offset(
                //                 0, 3), // changes position of shadow
                //           ),
                //         ],
                //         borderRadius: BorderRadius.circular(40),
                //         color: const Color.fromRGBO(245, 245, 245, 1),
                //       ),
                //       // child: TextFormField(
                //       //   style: TextStyle(
                //       //     fontSize: MediaQuery.of(context).size.width / 20,
                //       //     fontWeight: FontWeight.w400,
                //       //   ),
                //       //   decoration: InputDecoration(
                //       //     border: OutlineInputBorder(
                //       //         borderRadius: BorderRadius.circular(40)),
                //       //   ),
                //       // ),
                //     ),
                //   ],
                // ),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 70, top: 30),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Enter Code',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontSize: MediaQuery.of(context).size.width / 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsetsDirectional.only(top: 10),
                      // decoration: BoxDecoration(color: Colors.amberAccent),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(2),
                      child: const Pinput(
                        closeKeyboardWhenCompleted: true,
                        autofocus: true,
                        length: 6,
                        androidSmsAutofillMethod:
                            AndroidSmsAutofillMethod.smsUserConsentApi,
                        keyboardAppearance: Brightness.light,
                      ),
                    ),
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: Text(
                        "Resend Code",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 24,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    )),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 15,
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * mar,
                  ),
                  child: FloatingActionButton(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1,
                          color: Color.fromRGBO(124, 57, 208, 1),
                        ),
                        borderRadius: BorderRadius.circular(100)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/homepage');
                      // setState(() {
                      // show = !show;
                      // if (name == "SEND CODE") {
                      //   name = "SUBMIT";
                      // } else {
                      //   name = "SEND CODE";
                      // }
                      // if (mar == .4) {
                      //   mar = .46;
                      // } else {
                      //   mar = .4;
                      // }
                      // });
                    },
                    backgroundColor: const Color.fromRGBO(124, 57, 208, 1),
                    child: Text(
                      'Continue',
                      style: GoogleFonts.inter(
                        fontSize: MediaQuery.of(context).size.width / 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
