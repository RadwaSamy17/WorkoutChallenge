import 'package:flutter/material.dart';
import 'package:workout_challenge/daily/dailly.dart';

Widget CaloriesCard(
    BuildContext context, String date, average, total, double param) {
  return Container(
      width: MediaQuery.of(context).size.width,
      height: 270,
      margin: EdgeInsets.only(bottom: 20, top: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blueGrey[700].withOpacity(0.7)),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              date,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              average,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "2020",
              style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Average(Kcal)",
              style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        CardChart(param),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "$total Kcal",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ]));
}

Widget Data(BuildContext context) {
  return SizedBox(
    child: Padding(
      padding: EdgeInsets.all(15),
      child: ListView(
        children: [
          Text(
            "October 2020",
            style: TextStyle(
                color: Colors.grey[400],
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          CaloriesCard(context, "Oct 1 - Oct 15", "14", "101", 0.66),
          Text(
            "Septemper 2020",
            style: TextStyle(
                color: Colors.grey[400],
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          CaloriesCard(context, "Sep 20 - Sep 26", "37", "129", 0.2)
        ],
      ),
    ),
  );
}
