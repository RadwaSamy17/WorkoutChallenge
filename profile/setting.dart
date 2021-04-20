import 'package:flutter/material.dart';
import 'package:workout_challenge/profile/profile_appbar.dart';

class setting extends StatefulWidget {
  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
  double value1 = 5;
  double value2 = 5;
  double value3 = 5;
  bool isSwitched1 = true;
  bool isSwitched2 = true;

  Widget switcher(int i) {
    return Switch(
      value: i == 1 ? isSwitched1 : isSwitched2,
      onChanged: (value) {
        setState(() {
          if (i == 1) isSwitched1 = value;
          if (i == 2) isSwitched2 = value;
        });
      },
      activeTrackColor: Colors.blue,
      activeColor: Colors.white,
      inactiveTrackColor: Colors.blueGrey[200],
    );
  }

  Widget sound_card(String title, Icon icon, Widget w, Widget s) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  icon,
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [w]),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.volume_mute, color: Colors.white),
            Expanded(
              child: SizedBox(
                child: s,
              ),
            ),
            Icon(Icons.volume_up, color: Colors.white)
          ],
        )
      ],
    );
  }

  Widget setting_card(Icon icon, String title) {
    return Padding(
      padding: EdgeInsets.only(top: 25),
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: profile_appbar(context, "Settings", false),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "WORKOUT",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView(
                children: [
                  sound_card(
                      "Sound",
                      Icon(
                        Icons.volume_up,
                        color: Colors.blue,
                      ),
                      switcher(1),
                      Slider(
                        value: isSwitched1 == true ? value1 : 0,
                        min: 0,
                        max: 10,
                        divisions: 10,
                        activeColor: Colors.blue,
                        inactiveColor: Colors.blueGrey[200],
                        onChanged: (_value) {
                          setState(() {
                            value1 = _value;
                          });
                        },
                      )),
                  sound_card(
                      "TTS Voice",
                      Icon(
                        Icons.record_voice_over,
                        color: Colors.blue,
                      ),
                      switcher(2),
                      Slider(
                        value: isSwitched2 == true ? value2 : 0,
                        min: 0,
                        max: 10,
                        divisions: 10,
                        activeColor: Colors.blue,
                        inactiveColor: Colors.blueGrey[200],
                        onChanged: (_value) {
                          setState(() {
                            value2 = _value;
                          });
                        },
                      )),
                  sound_card(
                      "Music",
                      Icon(
                        Icons.music_note,
                        color: Colors.blue,
                      ),
                      Row(
                        children: [
                          Text(
                            "Infinity",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      Slider(
                        value: value3,
                        min: 1,
                        max: 10,
                        divisions: 10,
                        activeColor: Colors.blue,
                        inactiveColor: Colors.blueGrey[200],
                        onChanged: (_value) {
                          setState(() {
                            value3 = _value;
                          });
                        },
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "GENERAL SETTINGS",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold),
                  ),
                  setting_card(
                      Icon(
                        Icons.language,
                        color: Colors.blue,
                        size: 28,
                      ),
                      "Language options"),
                  setting_card(
                      Icon(
                        Icons.tune,
                        color: Colors.blue,
                        size: 28,
                      ),
                      "Metric & Imperial Units"),
                  setting_card(
                      Icon(
                        Icons.delete,
                        color: Colors.blue,
                        size: 28,
                      ),
                      "Delete all data")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
