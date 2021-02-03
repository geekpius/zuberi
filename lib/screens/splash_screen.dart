import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zuberi/constants.dart';
import 'package:zuberi/screens/login_screen.dart';
import 'package:zuberi/widgets/rounded_button.dart';

class SplashScreen extends StatelessWidget {
  static const nameRoute = 'splash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 180.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/images/zuberi.png'),
                        radius: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Zuberi',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Access your salary anyday, anytime.',
                    style: kFontStyle14,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            RoundedButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.nameRoute);
              },
              text: 'Get Started',
              color: Color(0xFF2D00D3),
              textStyle: kFontStyle14,
            ),
          ],
        ),
      ),
    );
  }
}
