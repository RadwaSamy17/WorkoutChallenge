import 'package:flutter/material.dart';

AppBar profile_appbar(
  BuildContext context,
  String title,
  bool action,
) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.grey[900],
    title: Text(
      title,
      style: TextStyle(color: Colors.white),
    ),
    centerTitle: true,
    leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          size: 25,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        }),
    actions: [
      action == true
          ? IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: null)
          : Container()
    ],
  );
}
