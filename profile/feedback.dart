import 'package:flutter/material.dart';

class feedback extends StatefulWidget {
  @override
  _feedbackState createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        centerTitle: true,
        title: Text("Feedback"),
        elevation: 0,
        backgroundColor: Colors.grey[900],
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 25,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Stack(
        children: [
          Container(
            height: 2 * MediaQuery.of(context).size.height / 3,
            child: TextField(
                style: TextStyle(
                    color: Colors.white, decoration: TextDecoration.none),
                expands: true,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                    hintText: "Feedback or suggestion",
                    hintStyle: TextStyle(fontSize: 15, color: Colors.grey[500]),
                    contentPadding: EdgeInsets.only(left: 15, top: 15))),
          ),
          Padding(
              padding: EdgeInsets.only(top: 500, left: 50, right: 50),
              child: Column(
                children: [
                  Container(
                    width: 5 * MediaQuery.of(context).size.width / 6,
                    height: 60,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Center(
                      child: Text(
                        "Send",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
