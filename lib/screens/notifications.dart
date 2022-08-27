import 'package:flutter/material.dart';
import 'package:jcbno_prj/widgets/notifbadge.dart';

class Notifications extends StatefulWidget {
  Notifications();

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          padding: EdgeInsets.only(top: 7),
          children: [
            NotifBadge(),
            NotifBadge(),
            NotifBadge(),
            NotifBadge(),
            NotifBadge(),
            NotifBadge(),
            NotifBadge(),
            NotifBadge(),
            NotifBadge(),
            NotifBadge(),
          ],
        ),
      ),
    );
  }
}
