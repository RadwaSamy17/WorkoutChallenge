import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:workout_challenge/profile/profile_appbar.dart';

class about_me extends StatefulWidget {
  @override
  _about_meState createState() => _about_meState();
}

Widget details(String t1, t2, int h) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        t1,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
      ),
      Text(
        "$h $t2",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue),
      )
    ],
  );
}

Widget line(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 20),
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 2,
      color: Colors.grey[800],
    ),
  );
}

bool male = true;
bool female = false;

class _about_meState extends State<about_me> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: profile_appbar(context, "ABOUT ME", false),
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Column(
            children: [
              details("Height", "cm", 157),
              line(context),
              details("Weight", "kg", 59),
              line(context),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "Gender",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          male = true;
                          female = false;
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 36,
                        decoration: BoxDecoration(
                            color:
                                male == true ? Colors.blue : Colors.grey[800],
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                topLeft: Radius.circular(10))),
                        child: Center(
                          child: Text(
                            "MALE",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            female = true;
                            male = false;
                          });
                        },
                        child: Container(
                          width: 70,
                          height: 36,
                          decoration: BoxDecoration(
                              color: female == true
                                  ? Colors.blue
                                  : Colors.grey[800],
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "FEMALE",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ))
                  ],
                )
              ])
            ],
          )),
    );
  }
}
