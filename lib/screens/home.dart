import 'package:flutter/material.dart';
import 'package:jcbno_prj/widgets/tile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Due",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Tile(
                      isRed: true,
                      text: "Medicine 1",
                    ),
                    Tile(
                      isRed: true,
                      text: "Medicine 2",
                    ),
                    Tile(
                      isRed: true,
                      text: "Medicine 3",
                    ),
                    Tile(
                      isRed: true,
                      text: "Medicine 4",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "To be taken Today",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Tile(
                      isRed: false,
                      text: "Medicine 1",
                    ),
                    Tile(
                      isRed: false,
                      text: "Medicine 2",
                    ),
                    Tile(
                      isRed: false,
                      text: "Medicine 3",
                    ),
                    Tile(
                      isRed: false,
                      text: "Medicine 4",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Updates about your condition: ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              Container(
                height: 500,
                width: 500,
                child: GridView.count(
                  primary: false,
                  padding: EdgeInsets.only(top: 10),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: [
                    NewsWidget(),
                    NewsWidget(),
                    NewsWidget(),
                    NewsWidget(),
                  ],
                ),
              ),
            ]),
          )),
    );
  }
}
