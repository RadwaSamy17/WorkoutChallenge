import 'package:flutter/material.dart';
import 'package:workout_challenge/profile/remove_ads.dart';

class purchase extends StatefulWidget {
  @override
  _purchaseState createState() => _purchaseState();
}

class _purchaseState extends State<purchase> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          showLoadingIndicator(context);
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 23),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.repeat,
                    color: Colors.blue,
                    size: 21,
                  ),
                ),
                Text(
                  "Recovery purchase",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey[800],
                  size: 21,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
