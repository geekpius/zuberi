import 'package:flutter/material.dart';
import 'package:zuberi/screens/congratulation_screen.dart';
import 'package:zuberi/widgets/rounded_button.dart';
import 'package:zuberi/widgets/summary_list.dart';

import '../constants.dart';

class TransactionSummaryScreen extends StatelessWidget {
  static const nameRoute = 'transaction_summary';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 45.0, left: 30.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon:
                          Icon(Icons.cancel_outlined, color: kCustomPinkColor),
                      onPressed: null,
                      iconSize: 40,
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text('Summary', style: kFontStyle20),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SummaryList(
                        listText: 'Requested Amount:',
                        amountText: 'GHS 50',
                      ),
                      SizedBox(height: 15),
                      SummaryList(
                        listText: 'Bank Info:',
                        amountText: '025441147585xxxxxxxx',
                      ),
                      SizedBox(height: 15),
                      SummaryList(
                        listText: 'Transaction Fee:',
                        amountText: 'GHS 0.50 (1.5%)',
                      ),
                      SizedBox(height: 15),
                      SummaryList(
                        listText: 'Total Due:',
                        amountText: 'GHS 50.50',
                      ),
                      SizedBox(height: 100),
                      RoundedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, CongratulationScreen.nameRoute);
                        },
                        text: 'Proceed',
                        color: Color(0xFF2D00D3),
                        textStyle: kFontStyle14,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
