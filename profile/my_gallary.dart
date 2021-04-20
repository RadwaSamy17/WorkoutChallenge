import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workout_challenge/profile/profile_appbar.dart';
import 'package:workout_challenge/profile/remove_ads.dart';

class my_gallary extends StatefulWidget {
  @override
  _my_gallaryState createState() => _my_gallaryState();
}

class _my_gallaryState extends State<my_gallary> {
  void _cupertinoActionSheet(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.only(top: 450),
            child: Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 100,
              child: CupertinoActionSheet(
                cancelButton: CupertinoActionSheetAction(
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                actions: [
                  CupertinoActionSheetAction(
                      onPressed: () {
                        setState(() {
                          showLoadingIndicator(context);
                        });
                      },
                      child: Text(
                        "Take a photo",
                      )),
                  CupertinoActionSheetAction(
                      onPressed: () {
                        setState(() {
                          showLoadingIndicator(context);
                        });
                      },
                      child: Text("Choose From Album"))
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: profile_appbar(context, "My Gallary", true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              "2020",
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 2,
            color: Colors.grey[700],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Oct",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _cupertinoActionSheet(context);
                    });
                  },
                  child: Container(
                    width: 120,
                    height: 130,
                    margin: EdgeInsets.only(top: 20),
                    color: Colors.grey.withOpacity(0.2),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        size: 70,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
