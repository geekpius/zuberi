import 'package:flutter/material.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';
import 'package:zuberi/screens/transaction_summary_screen.dart';
import 'package:zuberi/widgets/rounded_button.dart';

import '../constants.dart';

class WithdrawAmountScreen extends StatefulWidget {
  static const nameRoute = 'withdraw_amount';

  @override
  _WithdrawAmountScreenState createState() => _WithdrawAmountScreenState();
}

class _WithdrawAmountScreenState extends State<WithdrawAmountScreen> {
  int initValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 50.0, left: 25.0, right: 25.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  iconSize: 20,
                ),
                SizedBox(width: 80.0),
                Text(
                  'Enter amount',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                children: [
                  Text(
                    'How much do you want to withdraw?',
                    style: kFontStyle20,
                  ),
                  SizedBox(height: 80.0),
                  SingleCircularSlider(
                    100,
                    initValue,
                    baseColor: Color(0xFFE7E7E7),
                    height: 250,
                    width: 250,
                    selectionColor: kCustomBlueColor,
                    handlerColor: kCustomBlueColor,
                    showHandlerOutter: false,
                    onSelectionChange: (int init, int end, int laps){
                      setState(() {
                        initValue = end;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 90.0),
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
                                  text: '${initValue}',
                                  style: TextStyle(
                                    fontSize: 32.0,
                                    fontWeight: FontWeight.w700,
                                    color: kCustomBlueColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 80),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60.0),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Available funds ',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: kCustomPinkColor,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'GHS 3000',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: kCustomPinkColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 60.0),
            RoundedButton(
              onPressed: (){
                Navigator.pushNamed(context, TransactionSummaryScreen.nameRoute);
              },
              text: 'Proceed',
              color: kCustomBlueColor,
              textStyle: kButtonWhiteFontStyle,
            ),
          ],
        ),
      ),
    );
  }
}
