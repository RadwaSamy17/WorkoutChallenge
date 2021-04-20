import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class rate extends StatefulWidget {
  @override
  _rateState createState() => _rateState();
}

class _rateState extends State<rate> {
  @override
  Widget build(BuildContext context) {
    var rating = 3.0;
    return Stack(
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
        CupertinoAlertDialog(
          title: Text("Rate us"),
          content: SmoothStarRating(
            rating: rating,
            isReadOnly: false,
            size: 28,
            filledIconData: Icons.star,
            halfFilledIconData: Icons.star_half,
            defaultIconData: Icons.star_border,
            starCount: 5,
            allowHalfRating: true,
            spacing: 2.0,
          ),
          actions: [
            CupertinoActionSheetAction(
              child: Text('Rate'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoActionSheetAction(
              child: Text(
                'Cancel',
                style: TextStyle(color: Colors.grey[700]),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        )
      ],
    );
  }
}
