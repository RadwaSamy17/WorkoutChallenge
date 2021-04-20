import 'dart:io';

import 'package:flutter/material.dart';
import 'package:workout_challenge/challenges/challenge_board.dart';

int indexday = 0;

class DietDayPlan extends StatefulWidget {
  @override
  _DietDayPlanState createState() => _DietDayPlanState();
}

bool Standerd = true;
bool Vegetarian = false;

Widget DietDetails(String meal, image, detail1, detail2) {
  return Padding(
    padding: EdgeInsets.only(bottom: 20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 25),
              width: 55,
              height: 35,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/$image.png"),
                      fit: BoxFit.cover)),
            ),
            Text(
              meal,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(10)),
            ),
            Expanded(
              child: Text(
                detail1,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                    fontSize: 15),
              ),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(10)),
            ),
            Expanded(
              child: Text(
                detail2,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                    fontSize: 15),
              ),
            )
          ],
        )
      ],
    ),
  );
}

class _DietDayPlanState extends State<DietDayPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        title: Text("DAY $indexday"),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    Standerd = true;
                    Vegetarian = false;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: Standerd == true ? Colors.white : Colors.grey[800],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10))),
                  child: Center(
                    child: Text(
                      "STANDARD DIET",
                      style: TextStyle(
                          fontSize: 16,
                          color: Standerd == true ? Colors.blue : Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                  onTap: () {
                    setState(() {
                      Vegetarian = true;
                      Standerd = false;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: Vegetarian == true
                            ? Colors.white
                            : Colors.grey[800],
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "VEGETARIAN DIET",
                        style: TextStyle(
                            fontSize: 16,
                            color:
                                Vegetarian == true ? Colors.blue : Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ))
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: SizedBox(
                height: MediaQuery.of(context).size.height - 180,
                child: ListView(
                  children: [
                    DietDetails(
                        "BREAKFAST",
                        "Breakfast1",
                        "1 cup of tea or black coffee without suger and milk",
                        "Oats with fat-free milk (oatmeal,cracked wheat or barley)"),
                    DietDetails(
                        "SNACK",
                        "snack",
                        "1 cookie (low-sugar or suger-free is better)",
                        "Fat-free yogurt"),
                    DietDetails(
                        "LUNCH",
                        "lunch",
                        "2 pieces of whole-grain toast with vegetables (onions, tomato, lettuce, etc.)",
                        "Cooked or boiled vegetables (asparagus, broccoli, cauliflower, zucchini, spinach, or peas)"),
                    DietDetails(
                        "DINNER",
                        "diner",
                        "Fruit salad (apple, pear, orange, grapefruit, pineapple, etc.)",
                        "Any grilled or boiled fish or seafood (squids, crabs, shrimp"),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
