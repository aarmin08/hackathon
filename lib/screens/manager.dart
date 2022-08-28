import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jcbno_prj/screens/home.dart';
import 'package:jcbno_prj/screens/notifications.dart';
import 'package:jcbno_prj/screens/profile.dart';

class Manager extends StatefulWidget {
  const Manager({Key? key}) : super(key: key);

  @override
  State<Manager> createState() => _ManagerState();
}

class _ManagerState extends State<Manager> {
  final List<Widget> pgs = [
    Home(),
    Notifications(),
    Profile(),
  ];
  final List<String> pg = ["Hello, User!", "Notifications", "Profile"];

  int index = 0;

  void change(int ind) {
    setState(() {
      index = ind;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
                stretch: true,
                pinned: true,
                backgroundColor: Color(0xff3e4858),
                expandedHeight: 130,
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.all(10),
                  centerTitle: false,
                  title: Text(
                    pg.elementAt(index),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ))
          ];
        },
        body: Expanded(child: pgs.elementAt(index)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff3e4858),
        selectedItemColor: Colors.white,
        currentIndex: index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifs"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: change,
      ),
    );
  }
}
