import 'package:flutter/material.dart';
import 'package:zuberi/constants.dart';
import 'package:zuberi/screens/home_screen.dart';
import 'package:zuberi/widgets/input_field.dart';
import 'package:zuberi/widgets/rounded_button.dart';
import 'package:zuberi/widgets/screen_heading.dart';

class LoginScreen extends StatelessWidget {
  static const nameRoute = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(top: 120.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 20.0),
              child: ScreenHeading(
                text: "Log in",
              ),
            ),
            SizedBox(height: 40.0),
            InputField(
              onChanged: (value) {
                //Do something with the user input.
              },
              hintText: 'Work email',
            ),
            SizedBox(height: 20.0),
            InputField(
              onChanged: (value) {
                //Do something with the user input.
              },
              hintText: 'Password',
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            RoundedButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.nameRoute);
              },
              text: 'Proceed',
              color: Color(0xFFF3F3F6),
              minWidth: 350.0,
              textStyle: kButtonGreyFontStyle,
            ),
            SizedBox(height: 20.0),
            Text(
              'I have forgotten my password',
              style: TextStyle(
                color: Color(0xFF2D00D3).withOpacity(0.6),
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
