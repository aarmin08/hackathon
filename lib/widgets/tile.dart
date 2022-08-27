import 'package:flutter/material.dart';

class Tile extends StatefulWidget {
  String text;
  bool isRed = true;
  String desc;
  Tile(
      {Key? key,
      required this.text,
      required this.isRed,
      this.desc = "3 Hours due"})
      : super(key: key);

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                widget.isRed ? Color(0xffdd635e) : Color(0xff3e4858),
                widget.isRed
                    ? Color.fromARGB(255, 137, 60, 58)
                    : Color.fromARGB(255, 35, 41, 50)
              ])),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              widget.isRed ? widget.desc : "Take at 5PM",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewsWidget extends StatefulWidget {
  const NewsWidget({Key? key}) : super(key: key);

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(10)),
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [Color(0xffdd635e), Color.fromARGB(255, 137, 60, 58)])),
      child: Stack(
        children: [
          Container(
            height: 460,
            child: Image.asset(
              "fonts/download.jpeg",
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff3e4858),
              ),
              height: 40,
              width: 200,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Title",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
