import 'package:flutter/material.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';
import 'package:zuberi/screens/withdraw_amount_screen.dart';
import 'package:zuberi/widgets/icon_text_button.dart';

import '../constants.dart';

class HomeTabScreen extends StatelessWidget {
  static const nameRoute = 'home_tab';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 50.0, left: 40.0, right: 40.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.notifications_none,
                    color: Color(0xFF2300A6),
                  ),
                  onPressed: null,
                  iconSize: 25,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Hello Eugene',
                  style: kFontStyle20,
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(right: 50),
              child: RichText(
                text: TextSpan(
                  text: 'You have ',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF001514)),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'GHS 3000',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF001514)),
                    ),
                    TextSpan(text: ' of your salary remaining this month.'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Stack(
              overflow: Overflow.visible,
              children: [
                SingleCircularSlider(
                  100,
                  100,
                  baseColor: Color(0xFFE7E7E7),
                  height: 300,
                  width: 300,
                  selectionColor: kCustomBlueColor,
                  handlerColor: kCustomBlueColor,
                  showHandlerOutter: false,
                  child: Padding(
                    padding: EdgeInsets.only(top: 120.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'GHS ',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: kCustomBlueColor,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '66.667',
                                style: TextStyle(
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.w700,
                                  color: kCustomBlueColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Expanded(
                          child: Text(
                            'Amount available',
                            style: TextStyle(
                              fontSize: 12,
                              color: kCustomBlueColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 60,
                  right: 60,
                  bottom: -80,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: kBackgroundColor,
                    child: SingleCircularSlider(
                      100,
                      85,
                      baseColor: kCustomPinkColor,
                      height: 150,
                      width: 150,
                      selectionColor: Color(0xFFE7E7E7),
                      handlerColor: Color(0xFFE7E7E7),
                      sliderStrokeWidth: 5,
                      showHandlerOutter: false,
                      child: Padding(
                        padding: EdgeInsets.only(top: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: '24 ',
                                style: TextStyle(
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                  color: kCustomPinkColor,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'days',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: kCustomPinkColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'until next pay',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFFC4C4C4),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 120),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconTextButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.sync,
                      color: Color(0xFFFF0F80),
                    ),
                    text: 'Refresh',
                    textStyle: kButtonPinkFontStyle,
                    color: kCustomGrayColor,
                    minWidth: 30,
                  ),
                  IconTextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, WithdrawAmountScreen.nameRoute);
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    text: 'Withdraw',
                    textStyle: kButtonWhiteFontStyle,
                    color: kCustomBlueColor,
                    minWidth: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
