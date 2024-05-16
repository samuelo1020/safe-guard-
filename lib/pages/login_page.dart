
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safeguard/Widget/button_widget.dart';
import 'package:safeguard/pages/menu_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xff5356FF),
              Color(0xff378CE7),
              Color(0xff67C6E3),
              Color(0xffDFF5FF),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // icon
                  const Icon(
                    Icons.shield_moon_sharp,
                    size: 100,
                    color: Color(0xffFFF7FC),
                  ),
                  const SizedBox(height: 20),

                  // hello text
                  Text(
                    "Safe guard",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 48,
                      color: const Color(0xff222831),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Inicia sesion",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff222831),
                      //fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 30),
                  // email textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff67C6E3),
                        border: Border.all(
                          color: const Color(0xffFFF7FC),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // password textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff67C6E3),
                        border: Border.all(
                          color: const Color(0xffFFF7FC),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "password",
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // sign in button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      padding: const EdgeInsets.all(29),
                      decoration: BoxDecoration(
                        color: const Color(0xff00224D),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: ButtonWidget(
                          text: "Sign In",
                          onClicked: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyHomePage()),
                          ), key: Key('signInButton') ,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),

                  // not member
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Aun no tienes cuenta?",
                        style: TextStyle(
                          color: Color(0xffFFF7FC),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Registrese",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFFF7FC),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

