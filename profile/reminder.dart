import 'package:flutter/material.dart';
import 'package:workout_challenge/profile/about_me.dart';
import 'package:workout_challenge/profile/profile_appbar.dart';

class reminder extends StatefulWidget {
  @override
  _reminderState createState() => _reminderState();
}

class _reminderState extends State<reminder> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: profile_appbar(context, "Reminder", true),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "10:30 PM",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Every Day",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                          activeTrackColor: Colors.blue,
                          activeColor: Colors.white,
                          inactiveTrackColor: Colors.blueGrey[200],
                        )
                      ],
                    )
                  ],
                ),
                line(context),
              ],
            )));
  }
}
