import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:jcbno_prj/screens/doctorpage.dart';
import 'package:jcbno_prj/widgets/button.dart';

class Singup extends StatefulWidget {
  const Singup({Key? key}) : super(key: key);

  @override
  State<Singup> createState() => _SignupState();
}

class _SignupState extends State<Singup> {
  TextEditingController usernameCont = TextEditingController(),
      passwordCont = TextEditingController(),
      emailCont = TextEditingController();
  String email = "", pass = "", user = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                        backgroundColor: Color(0xff3b4656),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  SizedBox(height: 50),
                  const Text("Create Your Account!",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28)),
                  const SizedBox(height: 20),
                  const SizedBox(height: 20),
                  TextField(
                    controller: usernameCont,
                    cursorColor: Colors.white,
                    onChanged: (v) {
                      user = v;
                    },
                    onSubmitted: (v) {
                      user = v;
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                        hintText: "Username",
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
                    controller: emailCont,
                    cursorColor: Colors.white,
                    onChanged: (v) {
                      email = v;
                    },
                    onSubmitted: (v) {
                      email = v;
                    },
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
                    controller: passwordCont,
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
                  Expanded(
                    child: Container(),
                  ),
                  Button(
                      color: Color(0xffdd635e),
                      text: "Next ->",
                      onpress: () {
                        print("gamign");

                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Doctor()));
                      },
                      size: MediaQuery.of(context).size.width),
                  SizedBox(
                    height: 10,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
