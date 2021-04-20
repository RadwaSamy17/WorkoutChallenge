import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:workout_challenge/profile/feedback.dart';
import 'package:workout_challenge/profile/history.dart';

class Calender extends StatefulWidget {
  @override
  _CalenderState createState() => _CalenderState();
}

Widget detail(String title, cat, IconData icon) {
  return Column(
    children: [
      Icon(
        icon,
        color: Colors.blue,
        size: 30,
      ),
      SizedBox(
        height: 7,
      ),
      Text(
        title,
        style: TextStyle(
            fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 7,
      ),
      Text(
        cat,
        style: TextStyle(
            fontSize: 15, color: Colors.grey[500], fontWeight: FontWeight.bold),
      )
    ],
  );
}

class _CalenderState extends State<Calender> {
  CalendarController _calendarController;
  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  Widget calender() {
    return TableCalendar(
      onDayLongPressed: (day, events) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => history_screen()));
      },
      calendarController: _calendarController,
      startingDayOfWeek: StartingDayOfWeek.sunday,
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: TextStyle(color: Colors.blue),
        weekendStyle: TextStyle(color: Colors.blue),
      ),
      calendarStyle: CalendarStyle(
        holidayStyle: TextStyle(color: Colors.grey[300]),
        weekdayStyle: TextStyle(color: Colors.grey[300]),
        weekendStyle: TextStyle(color: Colors.grey[300]),
        outsideStyle: TextStyle(color: Colors.grey[600]),
        outsideWeekendStyle: TextStyle(color: Colors.grey[600]),
        todayStyle: TextStyle(color: Colors.blue, fontSize: 25),
        selectedColor: null,
        todayColor: null,
      ),
      headerStyle: HeaderStyle(
          leftChevronIcon: Icon(Icons.chevron_left, color: Colors.grey[300]),
          rightChevronIcon: Icon(Icons.chevron_right, color: Colors.grey[300]),
          formatButtonVisible: false,
          centerHeaderTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: ListView(children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blueGrey[700].withOpacity(0.7),
        ),
        padding: EdgeInsets.symmetric(vertical: 20),
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            calender(),
            Container(
              height: 1,
              color: Colors.grey[900],
              margin: EdgeInsets.symmetric(vertical: 20),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  detail("21", "COMPLETED", Icons.done),
                  detail("1278", "KCAL", Icons.whatshot),
                  detail("201 m", "DURATION", Icons.timer)
                ],
              ),
            ),
          ],
        ),
      ),
      Column(
        children: [
          histo_body_card(context, 2),
          BottomAppBar(
              color: Colors.grey[900],
              elevation: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 70),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => feedback()));
                  },
                  child: Text(
                    "GOT FEEDBACK OR QUESTIONS? TELL US",
                    style: TextStyle(
                        color: Colors.grey[600],
                        decoration: TextDecoration.underline),
                  ),
                ),
              ))
        ],
      )
    ]));
  }
}
