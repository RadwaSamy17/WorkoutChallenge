import 'package:flutter/material.dart';
import 'package:workout_challenge/challenges/new_challenge_select_plan.dart';
import 'package:polygon_clipper/polygon_border.dart';
import 'package:workout_challenge/challenges/today_challenge.dart';

AppBar ChallengeBoardAppbar(BuildContext context, String title, image) {
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
            Icons.tune,
            color: Colors.white,
          ),
          onPressed: () {
            /* Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        selected_plan(context, title, image)));*/
          }),
      IconButton(
          icon: Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          onPressed: () {}),
    ],
    leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        onPressed: () {
          Navigator.pop(context);
        }),
  );
}

int TodayCardIndex, index;
Widget challengeBoardCard(BuildContext context, TodayCardIndex) {
  return FlatButton(
    color: Colors.grey[800].withOpacity(0.9),
    shape: PolygonBorder(
      sides: 6,
      borderRadius: 5.0,
      rotate: 90.0,
      border: BorderSide(width: 3, color: Colors.blue),
    ),
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => TodayChallenge(context, TodayCardIndex)));
    },
    child: Text(
      (TodayCardIndex + 1).toString(),
      style: TextStyle(fontSize: 15, color: Colors.white),
    ),
  );
}

Widget GridviewChallengeCard(BuildContext context) {
  return Expanded(
    child: GridView.builder(
        padding: EdgeInsets.only(left: 15, right: 15, top: 100, bottom: 20),
        itemCount: 30,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6,
          mainAxisSpacing: 10,
          crossAxisSpacing: 7,
        ),
        itemBuilder: (ctx, TodayCardIndex) {
          return challengeBoardCard(context, TodayCardIndex);
        }),
  );
}

Widget ChallengeBoard(
  BuildContext context,
) {
  return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey[900],
      appBar: ChallengeBoardAppbar(context, AppbarTitle, backgroundImage),
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/$backgroundImage.jpg"),
                  fit: BoxFit.fill)),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
          color: Colors.grey[900].withOpacity(0.9),
        ),
        Column(children: [
          GridviewChallengeCard(context),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  level,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  "0.0%",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 6,
            color: Colors.grey[800].withOpacity(0.8),
            margin: EdgeInsets.symmetric(horizontal: 15),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(60)),
              child: Center(
                child: Text(
                  "START",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ])
      ]));
}
