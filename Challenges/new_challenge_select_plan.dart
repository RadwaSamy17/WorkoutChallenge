import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workout_challenge/challenges/challenge_board.dart';

String backgroundImage = "abs_";
String level = "Easy";
String AppbarTitle = "ABS WORKOUT";
AppBar selected_plan_appbar(BuildContext context, title) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.grey[900].withOpacity(0.0),
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    actions: [
      IconButton(
          icon: Icon(
            Icons.info_outline,
            color: Colors.white,
          ),
          onPressed: () {
            InformationAboutLevel(context);
          })
    ],
    leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        onPressed: () {
          Navigator.pop(context);
        }),
  );
}

Widget PlanlevelCard(String title1, title2, BuildContext context) {
  return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      padding: EdgeInsets.symmetric(vertical: 10),
      color: Colors.grey[800].withOpacity(1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: InkWell(
                onTap: () {
                  level = title1;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChallengeBoard(context)));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 18,
                      height: 24,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/medal.png"),
                              fit: BoxFit.fill)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      title1,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 21,
                          color: Colors.white),
                    )
                  ],
                ),
              )),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 2,
                margin: EdgeInsets.symmetric(horizontal: 15),
                color: Colors.grey[900]),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: InkWell(
                onTap: () {
                  level = title2;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChallengeBoard(context)));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 18,
                      height: 24,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/medal.png"),
                              fit: BoxFit.fill)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      title2,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 21,
                          color: Colors.white),
                    )
                  ],
                ),
              ))
        ],
      ));
}

Widget selected_plan(BuildContext context, title, image) {
  backgroundImage = image;
  AppbarTitle = title;
  return Scaffold(
    extendBodyBehindAppBar: true,
    backgroundColor: Colors.grey[900],
    appBar: selected_plan_appbar(context, title),
    body: Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/$image.jpg"), fit: BoxFit.fill)),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
          color: Colors.grey[900].withOpacity(0.9),
        ),
        Column(
          children: [
            SizedBox(
              height: 80,
            ),
            PlanlevelCard("EASY 1", "EASY 2", context),
            PlanlevelCard("MEDIUM 1", "MEDIUM 2", context),
            PlanlevelCard("HARD 1", "HARD 2", context)
          ],
        )
      ],
    ),
  );
}

Widget InformationCard(String plan_level, String describtion) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 20,
          height: 30,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/medal.png"), fit: BoxFit.fill)),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "THE $plan_level PLAN",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w600,
                  fontSize: 19,
                  color: Colors.white),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "is designed for those who exercise $describtion a week",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  color: Colors.grey[500]),
              maxLines: 2,
            )
          ],
        ))
      ]);
}

void InformationAboutLevel(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 65),
            color: Colors.grey[800],
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 45),
              child: Column(
                children: [
                  InformationCard("EASY", "once"),
                  SizedBox(
                    height: 30,
                  ),
                  InformationCard("MEDIUM", "2-3 times"),
                  SizedBox(
                    height: 30,
                  ),
                  InformationCard("HARD", "4-6 times"),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.grey[500],
                    margin: EdgeInsets.symmetric(vertical: 20),
                  ),
                  Expanded(
                      child: CupertinoButton(
                          child: Text(
                            "GOT IT",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none,
                              fontSize: 25,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }))
                ],
              ),
            ),
          ),
        );
      });
}
