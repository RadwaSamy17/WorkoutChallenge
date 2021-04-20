import 'dart:async';

import 'package:flutter/material.dart';

import 'package:workout_challenge/splash/showup.dart';

import '../challenges/home.dart';

class splash_screen extends StatefulWidget {
  @override
  _splash_screenState createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => home_screen()));
    });
    super.initState();
  }

  int delayAmount = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ShowUp(
          delay: delayAmount,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/splash.jpg"),
                        // NetworkImage("https://image.freepik.com/free-photo/silhouette-man-gym_23-2148024304.jpg"),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 5 * MediaQuery.of(context).size.height / 7,
                    left: MediaQuery.of(context).size.width / 10),
                child: Row(
                  children: [
                    ShowUp(
                      child: Container(
                        width: 15,
                        height: 100,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            //borderRadius: BorderRadius.circular(5),
                            color: Colors.blue),
                      ),
                      delay: delayAmount + 1000,
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 41, left: 4),
                            child: ShowUp(
                              child: Text(
                                "YOU JUST",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 45,
                                ),
                              ),
                              delay: delayAmount + 2000,
                            )),
                        Padding(
                            padding: EdgeInsets.only(top: 15, left: 4),
                            child: ShowUp(
                              child: Text(
                                "GET BETTER",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                ),
                              ),
                              delay: delayAmount + 3000,
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
