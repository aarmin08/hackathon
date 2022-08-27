import 'package:flutter/material.dart';

class NotifBadge extends StatefulWidget {
  String test = "This is a notification.";
  NotifBadge({Key? key, this.test = "This is a Notification!"})
      : super(key: key);

  @override
  State<NotifBadge> createState() => _NotifBadgeState();
}

class _NotifBadgeState extends State<NotifBadge> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          dense: true,
          contentPadding: EdgeInsets.all(7),
          leading: CircleAvatar(
            backgroundImage: Image.asset("fonts/aaa.png").image,
          ),
          title: Text(
            widget.test,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            "Your doctor said: \"Hi! This is a Test Notification\"",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
      ],
    );
  }
}
