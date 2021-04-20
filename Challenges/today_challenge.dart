import 'package:flutter/material.dart';
import 'package:workout_challenge/challenges/challenge_details.dart';

import 'package:workout_challenge/challenges/video.dart';
import 'package:workout_challenge/favorite.dart';
import 'package:workout_challenge/challenges/new_challenge_select_plan.dart';

int index;

List<String> exercises = [
  "ABDOMINAL-CRUNCSHE",
  "SET-UPS",
  "LEG-RAISES",
  "SUPERMAN"
];

List video = [VideoPlayer1(), VideoPlayer2(), VideoPlayer3(), VideoPlayer4()];
Widget TodayChallengeAppbar(BuildContext context, index) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.grey[900],
    centerTitle: true,
    title: Text("DAY $index"),
    leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 28,
        ),
        onPressed: () {
          Navigator.pop(context);
        }),
    actions: [
      IconButton(
          icon: Icon(
            Icons.star_border,
            color: Colors.white,
            size: 28,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => fav_screen()));
          }),
    ],
  );
}

Widget MainInformation(String title1, title2) {
  return Column(
    children: [
      Text(
        title1,
        style: TextStyle(
            fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        title2,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey[600]),
      ),
    ],
  );
}

Widget ExerciseCard(BuildContext context, String title, int times, int i) {
  return InkWell(
    onTap: () {
      /*Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ExerciseDetails(context: context)));*/
    },
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: video[i],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "* $times",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget TodayChallenge(BuildContext context, index) {
  index++;
  return Scaffold(
      backgroundColor: Colors.grey[700].withOpacity(0.6),
      appBar: TodayChallengeAppbar(context, index),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 180,
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MainInformation("57", "KCAL"),
                      MainInformation("7-10", "MIN"),
                      MainInformation(level, "LEVEL")
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Colors.grey[600],
                  margin: EdgeInsets.symmetric(horizontal: 25),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Music",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Infinity",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600]),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 16,
                              ),
                              onPressed: () {}),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Exercises",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "(4)",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                for (int i = 0; i < 4; i++)
                  ExerciseCard(context, exercises[i], 26 + i * 2, i),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60), color: Colors.blue),
              child: Center(
                child: Text(
                  "START",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 22),
                ),
              ),
            ),
          )
        ],
      ));
}
