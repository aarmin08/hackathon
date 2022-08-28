import 'dart:async';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:jcbno_prj/screens/manager.dart';
import 'package:jcbno_prj/screens/signup.dart';
import 'package:jcbno_prj/widgets/button.dart';

class Doctor extends StatefulWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
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
                SizedBox(
                  height: 10,
                ),
                const Text("Who is your doctor? ",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28)),
                const SizedBox(height: 20),
                TextField(
                  controller: emailC,
                  cursorColor: Colors.white,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      hintText: "Name",
                      hintStyle: TextStyle(color: Colors.grey),
                      focusColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
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
                      hintText: "Medical ID",
                      hintStyle: TextStyle(color: Colors.grey),
                      focusColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Container(),
                ),
                !isLoading
                    ? Button(
                        color: Color(0xffdd635e),
                        text: "Verify Doctor Data",
                        onpress: () {
                          isLoading = true;
                          setState(() {});
                          Timer(Duration(seconds: 2), () {
                            isLoading = false;
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (ctx) => Manager()));
                          });
                        },
                        size: MediaQuery.of(context).size.width)
                    : CircularProgressIndicator.adaptive(),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
