import 'package:flutter/material.dart';
import 'package:workout_challenge/profile/profile_appbar.dart';

class disclaimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profile_appbar(context, "Disclaimer", false),
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 15),
              child: Center(
                child: Text(
                  "Fitness Disclaimer",
                  style: TextStyle(color: Colors.black, fontSize: 11),
                ),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "The purpose of this DISCLAIMER is to make you conscious of the potential risks connected with activity in exercise, physical fitness or stretch program.",
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "We highly recommend you should always CONSULT your physician or healthcare provider BEFORE starting an exercise program or changing your diet plan. Do not start new fitness program if your physician or healthcare provider advises against it.",
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Whenever you feel faintness, dizziness, pain, shortness of breath or any other uncomfortable symptoms while exercising you should STOP IMMEDIATELY.",
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "We suppose you should be in good physical condition and be able to participate in the exercise, if you (or your family) have a history of high blood pressure or heart disease, or have chest pain when exercising in the past months, we not engaged you for this physical activity. If you smoke, have high cholesterol, are obese, or have a bone or joint problem, our fitness program could make it worse by changing physical activity.",
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "This application offers health, fitness and nutritional information and is designed for educational purposes only. You should not solo rely on this information as a substitute for professional medical advice, diagnosis, or treatment.",
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "You should understand that when participating in any exercise or exercise program, there is the possibility of physical injury. If you engage in this exercise or exercise program, you agree that you do so at your own risk, are voluntarily participating in these activities, assume all risk of injury to yourself, and agree to release and discharge this application from all claims or action, known or unknown, arising out of this application's negligence.",
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(
                height: 10,
              ),
            ]),
          )
        ],
      ),
    );
  }
}
