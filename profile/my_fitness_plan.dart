import 'package:flutter/material.dart';
import 'package:workout_challenge/profile/remove_ads.dart';

class my_fitness_plan extends StatefulWidget {
  @override
  _my_fitness_planState createState() => _my_fitness_planState();
}

Widget star_rate() {
  return Padding(
    padding: EdgeInsets.only(left: 7, top: 5),
    child: Icon(
      Icons.star,
      color: Colors.yellowAccent,
      size: 20,
    ),
  );
}

Widget small_text(String t1) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10, top: 10),
    child: Row(
      children: [
        Icon(
          Icons.assignment_turned_in,
          color: Colors.blue,
          size: 18,
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          t1,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}

BottomAppBar _bottomAppBar(BuildContext context) {
  return BottomAppBar(
      color: Colors.grey[900],
      elevation: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 110,
        color: Colors.grey[900],
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 7),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  showLoadingIndicator(context);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "CONTINUE",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 22,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "7 days for free. Then egp 1,149.99/year",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/sheild.png"),
                            fit: BoxFit.cover)),
                  ),
                  Text(
                    "  Cancel anytime during trial",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  )
                ],
              )
            ],
          ),
        ),
      ));
}

Widget free_trial_card(BuildContext context, String t1, t2) {
  return Padding(
    padding: EdgeInsets.only(right: 20),
    child: Container(
      width: 2 * MediaQuery.of(context).size.width / 3,
      height: 130,
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(vertical: 13, horizontal: 13),
      decoration: BoxDecoration(
          color: Colors.blueGrey[700].withOpacity(0.6),
          borderRadius: BorderRadius.circular(7)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                t1,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              t2,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ]),
    ),
  );
}

Widget trial_list(BuildContext context) {
  return SizedBox(
    height: 200,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        free_trial_card(context, "Can I access all features?",
            "Yes. You can access all features,including 100+ workouts, unlimitied workout plans ,etc and you can remove all ads"),
        free_trial_card(context, "How do i cancel the trial?",
            "App Store-> Tap on your account-> Subscriptions-> Choose app->Cancel Subscription"),
        free_trial_card(context, "Will I be charged when cancelling?",
            "NO.You can cancel anytime during the trial, and you won't be charged any fees if you cancel it at least 24 hours before the trial ends.")
      ],
    ),
  );
}

class _my_fitness_planState extends State<my_fitness_plan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[900].withOpacity(0.07),
          leading: null,
          automaticallyImplyLeading: false,
          toolbarHeight: 52,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 7, top: 7, bottom: 7),
              child: Container(
                height: 38,
                width: 38,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(38),
                    color: Colors.grey[900].withOpacity(0.1)),
                child: Center(
                  child: IconButton(
                      icon: Icon(
                        Icons.close,
                        size: 25,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/remove_ads2.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 300),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            //height: 700,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25)),
                                color: Colors.grey[900]),
                            child: Padding(
                              padding: EdgeInsets.all(30),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 15,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/medal.png"),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        "MILLIONS OF USERS' CHOICES",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Row(
                                      children: [
                                        Text("Rating",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.grey[600]
                                                    .withOpacity(0.9),
                                                fontWeight: FontWeight.w500)),
                                        for (int i = 0; i < 5; i++) star_rate(),
                                      ],
                                    ),
                                  ),
                                  small_text("Professional coaching video"),
                                  small_text("Get personalized workout plan"),
                                  small_text(
                                      "80+ workout music keep you motivated"),
                                  small_text("Remove ads"),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                    child: Center(
                                      child: Text(
                                        "RECOVERY PURCHASE",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.grey[700],
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 15, bottom: 3),
                                    child: Text(
                                      "Payment will be charged to your iTunes account at confirmation of purchase. Subscriptions will automatically renew unless auto-renew is turned off at least 24 hours before the end of the current period. Your account will be charged for renewal, in accordance with your plan, within 24 hours prior to the end of the current period. You can manage or turn off auto-renew in your Apple ID account settings anytime after purchase. Any unused portion of a free trial period, if offered, will be forfeited when the user purchases a subscription to that publication, where applicable.",
                                      style: TextStyle(color: Colors.grey[200]),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Termsof use | Privacy Policy",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey[400]),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Text(
                                          "ABOUT FREE TRIAL",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  trial_list(context)
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: _bottomAppBar(context));
  }
}
