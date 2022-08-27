import 'dart:ffi';

import "package:flutter/material.dart";

class Button extends StatelessWidget {
  Color color;
  String text;

  Function onpress;
  double size;

  Button(
      {Key? key,
      required this.color,
      required this.size,
      required this.text,
      required this.onpress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onpress();
      },
      child: Container(
        width: size,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(top: 10),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
