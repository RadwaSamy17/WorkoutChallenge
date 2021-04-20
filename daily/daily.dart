import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

Widget TackerCard(BuildContext context, String tracker, detail, IconData icon) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 120,
    margin: EdgeInsets.only(bottom: 20),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey[700].withOpacity(0.7)),
    child: Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: Colors.blue,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "$tracker Tracker",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.fitness_center,
              color: Colors.blue,
              size: 17,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              detail,
              style: TextStyle(
                  color: Colors.grey[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            )
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 40,
          margin: EdgeInsets.symmetric(horizontal: 90, vertical: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.blue),
          child: Center(
            child: Text(
              "SET A GOAL",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
        )
      ],
    ),
  );
}

Widget CardChart(double param) {
  return Expanded(
      child: BarChart(BarChartData(
          maxY: 4,
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
            leftTitles: SideTitles(
              showTitles: false,
            ),
            bottomTitles: SideTitles(
              showTitles: true,
              getTextStyles: (value) => const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
              margin: 16,
              getTitles: (double value) {
                switch (value.toInt()) {
                  case 0:
                    return 'M';
                  case 1:
                    return 'T';
                  case 2:
                    return 'W';
                  case 3:
                    return 'T';
                  case 4:
                    return 'F';
                  case 5:
                    return 'S';
                  case 6:
                    return 'S';
                  default:
                    return '';
                }
              },
            ),
          ),
          barGroups: [
        for (int i = 0; i < 7; i++)
          BarChartGroupData(x: i, barRods: [
            BarChartRodData(
                y: param == 1 ? 3 : param * 4 - i.toDouble(),
                colors: param == 1
                    ? [Colors.grey[600]]
                    : [Colors.grey[600], Colors.blue]),
          ])
      ])));
}

Widget StatisticCard(BuildContext context, String title, cat, IconData icon) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 170,
    margin: EdgeInsets.only(bottom: 20),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey[700].withOpacity(0.7)),
    child: Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: Colors.blue,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Weekly Average",
              style: TextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "0 $cat",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19),
            ),
            Text(
              "0 $cat",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            )
          ],
        ),
        CardChart(1)
      ],
    ),
  );
}

Widget Daily(BuildContext context) {
  return SizedBox(
    child: Padding(
      padding: EdgeInsets.all(15),
      child: ListView(
        children: [
          TackerCard(context, "Step", "Set your goal and be fitness",
              Icons.directions_walk),
          TackerCard(context, "Water",
              "Keep you healthy and help you lose weight", Icons.invert_colors),
          TackerCard(context, "Weight", "Set your goal and be fitness",
              Icons.straighten),
          StatisticCard(context, "Workout", "min", Icons.timer),
          StatisticCard(context, "Calories", "Kcal", Icons.whatshot)
        ],
      ),
    ),
  );
}
