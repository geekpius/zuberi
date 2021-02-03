import 'package:flutter/material.dart';

class SummaryList extends StatelessWidget {
  final String listText;
  final String amountText;

  SummaryList({this.listText, this.amountText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          listText,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.black,
            fontSize: 14.0,
          ),
        ),
        Text(
          amountText,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.black,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}
