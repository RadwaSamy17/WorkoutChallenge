import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PickerPage extends StatefulWidget {
  @override
  _PickerPageState createState() => _PickerPageState();
}

class _PickerPageState extends State<PickerPage> {
  int _selectedIndex = 0;
  int _selectedHour = 0, _selectedMinute = 0;
  int _changedNumber = 0, _selectedNumber = 1;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('Cupertino Picker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              "MutiSelect Cupertino Picker",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Row(
              children: <Widget>[
                CupertinoButton(
                    child: Text("Select Time:"),
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 200.0,
                              color: Colors.white,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: CupertinoPicker(
                                        scrollController:
                                            new FixedExtentScrollController(
                                          initialItem: _selectedHour,
                                        ),
                                        itemExtent: 32.0,
                                        backgroundColor: Colors.white,
                                        onSelectedItemChanged: (int index) {
                                          setState(() {
                                            _selectedHour = index;
                                          });
                                        },
                                        children: new List<Widget>.generate(24,
                                            (int index) {
                                          return new Center(
                                            child: new Text('${index + 1}'),
                                          );
                                        })),
                                  ),
                                  Expanded(
                                    child: CupertinoPicker(
                                        scrollController:
                                            new FixedExtentScrollController(
                                          initialItem: _selectedMinute,
                                        ),
                                        itemExtent: 32.0,
                                        backgroundColor: Colors.white,
                                        onSelectedItemChanged: (int index) {
                                          setState(() {
                                            _selectedMinute = index;
                                          });
                                        },
                                        children: new List<Widget>.generate(60,
                                            (int index) {
                                          return new Center(
                                            child: new Text('${index + 1}'),
                                          );
                                        })),
                                  ),
                                ],
                              ),
                            );
                          });
                    }),
                Text(
                  '${_selectedHour + 1}:${_selectedMinute + 1}',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}