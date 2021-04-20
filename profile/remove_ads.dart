import 'dart:ffi';
import 'dart:ui';
import 'dart:wasm';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class remove_ads extends StatefulWidget {
  @override
  _remove_adsState createState() => _remove_adsState();
}

void showLoadingIndicator(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Container(
          width: 50,
          height: 50,
          child: CupertinoAlertDialog(
            content: CupertinoActivityIndicator(
              radius: 20,
            ),
          ));
    },
  );
}

class _remove_adsState extends State<remove_ads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/remove_ads3.jpg"),
                    // NetworkImage("https://image.freepik.com/free-photo/silhouette-man-gym_23-2148024304.jpg"),
                    fit: BoxFit.cover)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
          ),
          Container(
            child: AppBar(
              centerTitle: true,
              title: Text("Remove ads"),
              elevation: 0,
              backgroundColor: Colors.black.withOpacity(0),
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
          ),
          Padding(
              padding: EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(130),
                          image: DecorationImage(
                              image: AssetImage("assets/no_ads.png"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text(
                          "EGP 95.99",
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 22,
                              color: Colors.grey[500]),
                        ),
                        Text(
                          "  EGP 79.99",
                          style: TextStyle(
                              fontSize: 37,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text(
                        "Only",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 2 * MediaQuery.of(context).size.height / 8),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          showLoadingIndicator(context);
                        });
                      },
                      child: Container(
                        width: 5 * MediaQuery.of(context).size.width / 6,
                        height: 60,
                        decoration: BoxDecoration(color: Colors.blue),
                        child: Center(
                          child: Text(
                            "Remove now",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            showLoadingIndicator(context);
                          });
                        },
                        child: Text(
                          "Recovery purchase",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 22,
                              color: Colors.white),
                        ),
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
