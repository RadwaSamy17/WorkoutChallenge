import 'package:flutter/material.dart';
import 'package:workout_challenge/challenges/challenge_board.dart';

import 'new_challenge_select_plan.dart';

List<Map<String, dynamic>> bottombarlist = [
  {
    "icon": Icon(
      Icons.assignment,
    ),
    "title": Text(
      "Plane",
    )
  },
  {
    "icon": Icon(
      Icons.format_list_numbered,
    ),
    "title": Text(
      "Challenges",
    )
  },
  {
    "icon": Icon(
      Icons.calendar_today,
    ),
    "title": Text(
      "Daily",
    )
  },
  {
    "icon": Icon(
      Icons.account_circle,
    ),
    "title": Text(
      "Profile",
    )
  },
];

Widget my_challenges_card({BuildContext context}) {
  return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: InkWell(
        onTap: () {
          AppbarTitle = "ABS WORKOUT";
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ChallengeBoard(context)));
        },
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/abs_.jpg"), fit: BoxFit.cover)),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
            ),
            Positioned(
                top: 100,
                left: 15,
                right: 15,
                bottom: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "ABS WORKOUT",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 5,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Easy - Day 1",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "0%",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ));
}

Widget all_challenges_card(String title, String image, {BuildContext context}) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => selected_plan(context, title, image)));
    },
    child: Padding(
      padding: EdgeInsets.only(top: 15, bottom: 0),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/$image.jpg"), fit: BoxFit.cover)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: MediaQuery.of(context).size.height / 9),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}

Widget my_challenges_list({BuildContext context}) {
  return Padding(
    padding: EdgeInsets.all(17),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "MY CHALLENGES",
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        my_challenges_card(context: context),
        Text(
          "ALL CHALLENGES",
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        all_challenges_card("FULL BODY WORKOUT", "full", context: context),
        all_challenges_card("ARM WORKOUT", "arm", context: context),
        all_challenges_card("LEG WORKOUT", "leg", context: context),
        all_challenges_card("BUTT WORKOUT", "squats", context: context)
      ],
    ),
  );
}
