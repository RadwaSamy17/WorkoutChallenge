import 'package:flutter/material.dart';
import 'package:workout_challenge/profile/feedback.dart';
import 'package:workout_challenge/profile/profile_appbar.dart';

class history_screen extends StatefulWidget {
  @override
  _history_screenState createState() => _history_screenState();
}

Widget small_colum(String t1, t2) {
  return Column(
    children: [
      SizedBox(
        height: 13,
      ),
      Text(
        t1,
        style: TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
      ),
      SizedBox(
        height: 8,
      ),
      Text(
        t2,
        style: TextStyle(color: Colors.grey[300], fontSize: 12),
      ),
    ],
  );
}

Widget small_container() {
  return Padding(
    padding: EdgeInsets.only(top: 20, bottom: 5, left: 18, right: 18),
    child: Container(
      width: 2,
      height: 40,
      color: Colors.white24,
    ),
  );
}

Widget detail_card() {
  return Column(
    children: [
      SizedBox(
        height: 7,
      ),
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, right: 10),
            child: Container(
              width: 80,
              height: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  image: DecorationImage(
                      image: AssetImage("assets/abs_.jpg"), fit: BoxFit.fill)),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "DAY 23 - ABS WORKOUT ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  small_colum("23.06", "Sep 21"),
                  small_container(),
                  small_colum("18:24", "Duration"),
                  small_container(),
                  small_colum("94 Kcal", "Kcal"),
                ],
              )
            ],
          ),
        ],
      ),
    ],
  );
}

Widget histo_body_card(BuildContext context, int w) {
  return Padding(
    padding: EdgeInsets.all(15),
    child: Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.blueGrey[700].withOpacity(0.7),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sep 20 - Sep 26",
                  style: TextStyle(color: Colors.grey[300], fontSize: 12),
                ),
                Text(
                  "$w Workout 18:24",
                  style: TextStyle(color: Colors.grey[300], fontSize: 12),
                )
              ],
            ),
            for (int i = 0; i < w; i++) detail_card(),
          ],
        ),
      ),
    ),
  );
}

class _history_screenState extends State<history_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: profile_appbar(context, "HISTORY", false),
      bottomNavigationBar: BottomAppBar(
          color: Colors.grey[900],
          elevation: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 70),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => feedback()));
              },
              child: Text(
                "GOT FEEDBACK OR QUESTIONS? TELL US",
                style: TextStyle(
                    color: Colors.grey[600],
                    decoration: TextDecoration.underline),
              ),
            ),
          )),
      body: ListView(
        children: [
          histo_body_card(context, 1),
          histo_body_card(context, 3),
          histo_body_card(context, 2)
        ],
      ),
    );
  }
}
