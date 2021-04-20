import 'package:flutter/material.dart';
import 'package:workout_challenge/profile/history.dart';

class fav_screen extends StatefulWidget {
  @override
  _fav_screenState createState() => _fav_screenState();
}

class _fav_screenState extends State<fav_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[800],
          centerTitle: true,
          title: Text("FAVORITE"),
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 28,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              child: Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 13),
                      child: Text(
                        "ADD FAVORITE TRAINING",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 13),
                      child: Text(
                        "Save your favorite training for a quick start at any time",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 2 * MediaQuery.of(context).size.height / 8),
              child: Container(
                width: 5 * MediaQuery.of(context).size.width / 6,
                height: 68,
                decoration: BoxDecoration(color: Colors.blue),
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                    ),
                    Center(
                      child: Text(
                        "VIEW HISTORY",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 25,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => history_screen()));
                        })
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
