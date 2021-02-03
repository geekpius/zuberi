import 'package:flutter/material.dart';
import 'package:zuberi/widgets/rounded_button.dart';
import 'package:zuberi/widgets/summary_list.dart';

import '../constants.dart';

class CongratulationScreen extends StatelessWidget {
  static const nameRoute = 'congratulation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 300.0),
          child: Column(
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 100.0,
              ),
              SizedBox(height: 20),
              Text(
                'Azaming!',
                style: kFontStyle20,
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 80.0),
                child: Center(
                  child: Text(
                    'You have moved GHS 50 to your back account, you can access your funds now.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
