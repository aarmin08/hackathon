import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:jcbno_prj/widgets/tile.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool val = true, val2 = true, val3 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 40,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Username",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "User Information: ",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Age: 30",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Name: Username",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Known Health Conditions: ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Container(
              height: 150,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Tile(
                      text: "Condition 1",
                      isRed: true,
                      desc: "Diagnosed 3 years ago"),
                  Tile(
                      text: "Condition 1",
                      isRed: true,
                      desc: "Diagnosed 3 years ago"),
                  Tile(
                      text: "Condition 1",
                      isRed: true,
                      desc: "Diagnosed 3 years ago"),
                  Tile(
                      text: "Condition 1",
                      isRed: true,
                      desc: "Diagnosed 3 years ago"),
                  Tile(
                    text: "Condition 1",
                    isRed: true,
                    desc: "Diagnosed 3 years ago",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Medications: ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Container(
              height: 150,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Tile(
                      text: "Medication 1",
                      isRed: false,
                      desc: "Frequency: 3 times a week"),
                  Tile(
                      text: "Medication 1",
                      isRed: false,
                      desc: "Frequency: 3 times a week"),
                  Tile(
                      text: "Medication 1",
                      isRed: false,
                      desc: "Frequency: 3 times a week"),
                  Tile(
                      text: "Medication 1",
                      isRed: false,
                      desc: "Frequency: 3 times a week"),
                  Tile(
                    text: "Medication 1",
                    isRed: false,
                    desc: "Frequency: 3 times a week",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 107, 124, 150),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Add a medication: ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 26),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        decoration:
                            InputDecoration(hintText: "Medication Name"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        decoration:
                            InputDecoration(hintText: "Frequency (1-7)"),
                      ),
                    ),
                    Text(
                      "Time to take medication: ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Row(
                      children: [
                        StatefulBuilder(builder: (context, setState) {
                          return Checkbox(
                              value: val,
                              onChanged: (v) {
                                val = v!;
                                setState(() {});
                              });
                        }),
                        Text("Option 1"),
                      ],
                    ),
                    Row(
                      children: [
                        StatefulBuilder(builder: (context, setState) {
                          return Checkbox(
                              value: val2,
                              onChanged: (v) {
                                val2 = v!;
                                setState(() {});
                              });
                        }),
                        Text("Option 1"),
                      ],
                    ),
                    Row(
                      children: [
                        StatefulBuilder(builder: (context, setState) {
                          return Checkbox(
                              value: val3,
                              onChanged: (v) {
                                val3 = v!;
                                setState(() {});
                              });
                        }),
                        Text("Option 1"),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Done!")),
                    )
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
