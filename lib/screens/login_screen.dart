import 'package:flutter/material.dart';
import 'package:zuberi/constants.dart';
import 'package:zuberi/widgets/input_field.dart';
import 'package:zuberi/widgets/screen_heading.dart';

class LoginScreen extends StatelessWidget {
  static const nameRoute = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 120.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, bottom: 30),
              child: ScreenHeading(
                text: "Log in",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: InputField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                hintText: 'Work email',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: InputField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                hintText: 'Password',
                obscureText: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
