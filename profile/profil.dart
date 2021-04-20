import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workout_challenge/favorite.dart';
import 'package:workout_challenge/profile/about_me.dart';
import 'package:workout_challenge/profile/disclaimer.dart';
import 'package:workout_challenge/profile/history.dart';
import 'package:workout_challenge/profile/feedback.dart';
import 'package:workout_challenge/profile/my_fitness_plan.dart';
import 'package:workout_challenge/profile/my_gallary.dart';
import 'package:workout_challenge/profile/privacy_policy.dart';
import 'package:workout_challenge/profile/rate_us.dart';
import 'package:workout_challenge/profile/recovery_purchase.dart';
import 'package:workout_challenge/profile/reminder.dart';
import 'package:workout_challenge/profile/remove_ads.dart';
import 'package:workout_challenge/profile/setting.dart';

List<Map<String, dynamic>> _profileData = [
  {"title": "About me", "icon": Icons.account_box},
  {"title": "My Gallery", "icon": Icons.camera_alt},
  {"title": "My fitness plan", "icon": Icons.assignment},
  {"title": "Reminder", "icon": Icons.alarm},
  {"title": "History", "icon": Icons.history},
  {"title": "Settings", "icon": Icons.settings},
  {"title": "Recovery purchase", "icon": Icons.repeat},
  {"title": "Feedback", "icon": Icons.message},
  {"title": "Remove ads", "icon": Icons.remove_from_queue},
  {"title": "Rate us", "icon": Icons.star},
  {"title": "Disclaimer", "icon": Icons.announcement},
  {"title": "Privacy policy", "icon": Icons.remove_red_eye},
];

List _profile_pages = [
  about_me(),
  my_gallary(),
  my_fitness_plan(),
  reminder(),
  history_screen(),
  setting(),
  feedback(),
  remove_ads(),
  rate(),
  disclaimer(),
  privacy_policy()
];

class apple_Health extends StatefulWidget {
  @override
  _apple_HealthState createState() => _apple_HealthState();
}

class _apple_HealthState extends State<apple_Health> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Container(
                    width: 21,
                    height: 21,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage("assets/health.png")),
                    )),
              ),
              Text(
                "APPLE HEALTH",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
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
    );
  }
}

Widget profile_card(
    BuildContext context, String title, IconData icon, dynamic page) {
  return InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 23),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  icon,
                  color: Colors.blue,
                  size: 21,
                ),
              ),
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey[800],
                size: 21,
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget profile_body(BuildContext context) {
  return Column(children: [
    Padding(
      padding: EdgeInsets.all(20),
      child: InkWell(
          onTap: () {
            showLoadingIndicator(context);
          },
          child: Container(
            width: 8 * MediaQuery.of(context).size.width / 9,
            height: 50,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "GO PREMIUM",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )),
    ),
    for (int i = 0; i < 7; i++)
      i == 6
          ? purchase()
          : profile_card(context, _profileData[i]["title"],
              _profileData[i]["icon"], _profile_pages[i]),
    apple_Health(),
    for (int i = 7; i < 12; i++)
      profile_card(context, _profileData[i]["title"], _profileData[i]["icon"],
          _profile_pages[i - 1]),
    Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        "Version 2.4.0",
        style: TextStyle(color: Colors.blue),
      ),
    )
  ]);
}
