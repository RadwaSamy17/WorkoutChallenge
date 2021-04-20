import 'package:flutter/material.dart';
import 'package:workout_challenge/appbar.dart';
import 'package:workout_challenge/challenges/attatched.dart';
import 'package:workout_challenge/daily/calender.dart';
import 'package:workout_challenge/daily/dailly.dart';
import 'package:workout_challenge/daily/data.dart';
import 'package:workout_challenge/plan/plan_screen.dart';
import 'package:workout_challenge/profile/profil.dart';

class home_screen extends StatefulWidget {
  @override
  _home_screenState createState() => _home_screenState();
}

int _currentIndex = 1;

class _home_screenState extends State<home_screen>
    with TickerProviderStateMixin {
  TabController _tabController_plan;
  TabController _tabController_daily;
  @override
  void initState() {
    super.initState();

    _tabController_plan = new TabController(vsync: this, length: 2);
    _tabController_daily = new TabController(vsync: this, length: 3);
  }

  TabBar DailyTabBar_builder() {
    return TabBar(
        controller: _tabController_daily,
        unselectedLabelColor: Colors.grey[700],
        labelStyle: TextStyle(
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        isScrollable: true,
        indicatorColor: Colors.blue,
        tabs: [
          Tab(
            text: "Daily",
          ),
          Tab(
            text: "Calender",
          ),
          Tab(
            text: "Data",
          ),
        ]);
  }

  TabBarView DailyTabbar_body() {
    return TabBarView(
        controller: _tabController_daily,
        children: [Daily(context), Calender(), Data(context)]);
  }

  TabBar PlanTabBar_builder() {
    return TabBar(
        controller: _tabController_plan,
        unselectedLabelColor: Colors.grey[700],
        labelStyle: TextStyle(
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        isScrollable: true,
        indicatorColor: Colors.blue,
        tabs: [
          Tab(
            text: "FOR YOU",
          ),
          Tab(
            text: "MEAL PLANS",
          ),
        ]);
  }

  TabBarView PlanTabbar_body() {
    return TabBarView(controller: _tabController_plan, children: [
      ForYou(context),
      MealPlans(context),
    ]);
  }

  Widget home_body(int index) {
    Widget Body;
    switch (index) {
      case 0:
        Body = Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [PlanTabBar_builder(), Expanded(child: PlanTabbar_body())],
        );
        break;
      case 1:
        Body = ListView(
          scrollDirection: Axis.vertical,
          children: [my_challenges_list(context: context)],
        );
        break;
      case 2:
        Body = Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DailyTabBar_builder(),
            Expanded(child: DailyTabbar_body())
          ],
        );
        break;
      case 3:
        Body = ListView(
          scrollDirection: Axis.vertical,
          children: [profile_body(context)],
        );
        break;
    }
    return Body;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: appBar(context, _currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.black45,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey[200],
          selectedIconTheme: IconThemeData(color: Colors.blue),
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          items: [
            for (int i = 0; i < 4; i++)
              BottomNavigationBarItem(
                  icon: bottombarlist[i]["icon"],
                  title: bottombarlist[i]["title"])
          ],
        ),
        body: home_body(_currentIndex));
  }
}
