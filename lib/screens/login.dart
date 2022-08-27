import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:jcbno_prj/screens/doctorpage.dart';
import 'package:jcbno_prj/screens/manager.dart';
import 'package:jcbno_prj/screens/signup.dart';
import 'package:jcbno_prj/widgets/button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailC = TextEditingController(),
      passC = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: Image.asset(
                          "fonts/Screenshot_2022-08-26_at_8.27.13_AM-removebg-preview.png"),
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                  const Text("Health Mate",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28)),
                  const SizedBox(height: 20),
                  const Text("Manage your medicines, at your convenience",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w100,
                          fontSize: 16)), // subtitle
                  // 2 textfields for login
                  const SizedBox(height: 20),
                  TextField(
                    controller: emailC,
                    cursorColor: Colors.white,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.grey),
                        focusColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: passC,
                    cursorColor: Colors.white,
                    style: const TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "password",
                        hintStyle: TextStyle(color: Colors.grey),
                        focusColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print("signe");
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (ctx) => Singup()));
                          },
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        const Text(
                          " if you don't have an account",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  !isLoading
                      ? Button(
                          color: Color(0xffdd635e),
                          text: "Next ->",
                          onpress: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (ctx) => Manager()));
                          },
                          size: MediaQuery.of(context).size.width)
                      : const SizedBox(
                          height: 50,
                          width: 50,
                          child: CircularProgressIndicator.adaptive()),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
