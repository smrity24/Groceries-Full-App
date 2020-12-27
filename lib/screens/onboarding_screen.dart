import 'dart:async';

import 'package:flutter/material.dart';
import 'package:groceries_app/screens/onBoarding_screen2.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), openScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF81C784),
      appBar: AppBar(
        backgroundColor: Color(0xFF81C784),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            child: Center(
              child: Container(
                height: 500,
                width: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void openScreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OnboardingScreen2()));
  }
}
