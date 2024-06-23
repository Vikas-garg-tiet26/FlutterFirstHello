// SEND CODE  UI PENDING 
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Forgotpassword1 extends StatefulWidget {
  const Forgotpassword1({super.key});

  @override
  State<Forgotpassword1> createState() => _Forgotpassword1State();
}

class _Forgotpassword1State extends State<Forgotpassword1> {
  bool visiblepassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 57, 36, 103),
        flexibleSpace: Image.asset(
          'assets/logo2.png',
          scale: 0.01,
          filterQuality: FilterQuality.high,
          alignment: Alignment.bottomLeft,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(18),
        height: MediaQuery.of(context).size.height,
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oops!You forgot your password!!',
                style: GoogleFonts.inter(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 124, 57, 208),
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'Don\'t Worry',
                style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 124, 57, 208)),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/homepage');
                },
                child: const Text('Request for OTP'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
