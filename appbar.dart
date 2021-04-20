import 'package:flutter/material.dart';
import 'package:workout_challenge/profile/remove_ads.dart';

import 'favorite.dart';

AppBar appBar(BuildContext context, int currentindex) {
  String title;
  IconData icon;

  switch (currentindex) {
    case 0:
      title = "PLAN";
      icon = Icons.star;
      break;
    case 1:
      title = "30 DAY WORKOUT CHALLENGE";
      icon = Icons.star;

      break;
    case 2:
      title = "DAILY";
      icon = Icons.star;
      break;
    case 3:
      title = "PROFILE";
      icon = Icons.card_giftcard;

      break;
  }

  return AppBar(
    elevation: 0,
    backgroundColor: Colors.grey[900],
    title: Text(title),
    actions: [
      IconButton(
          icon: Icon(
            icon,
            size: 25,
            color: Colors.white,
          ),
          onPressed: () {
            currentindex == 3
                ? showLoadingIndicator(context)
                : Navigator.push(context,
                    MaterialPageRoute(builder: (context) => fav_screen()));
          })
    ],
  );
}
