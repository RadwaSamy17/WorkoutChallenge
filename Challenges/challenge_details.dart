import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workout_challenge/challenges/video.dart';

CupertinoActionSheet ExerciseDetails({BuildContext context}) {
  showModalBottomSheet(
      context: context,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      builder: (context) {
        return Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: ListView(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: VideoPlayer1(),
                  ),
                  Text(
                    "hfuyf86rygvhkfr6",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Abs",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Lie on your back with your knees bent and your arms stretched forward.",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Then lift your upper body off the floor. Hold for a few seconds and slowly return.",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "It primarliy works the rectus abdominis muscle and the obliques",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600]),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ));
      });
}
