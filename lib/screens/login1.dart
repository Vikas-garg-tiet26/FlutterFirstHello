import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
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
                  'Welcome',
                  style: GoogleFonts.inter(
                      fontSize: 25, fontWeight: FontWeight.w700),
                ),
                Text(
                  'Grow your buisness with us',
                  style: GoogleFonts.inter(
                      fontSize: 15,
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
                TextFormField(
                  obscureText: visiblepassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          visiblepassword = !visiblepassword;
                        });
                      },
                      icon: Icon(visiblepassword
                          ? Icons.remove_red_eye_rounded
                          : Icons.remove_red_eye_outlined),
                      color: const Color.fromARGB(255, 53, 55, 57),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgotpassword');
                    },
                    child: const Text('Forgot Password?'),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/homepage');
                  },
                  child: const Text('Log In'),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?'),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Sign Up'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Or log in with:'),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.facebook),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.person),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ])),
        ));
  }
}
