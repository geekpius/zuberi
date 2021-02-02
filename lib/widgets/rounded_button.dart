import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  RoundedButton({this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      color: Color(0xFF2D00D3),
      borderRadius: BorderRadius.circular(5.0),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: 294.0,
        height: 48.0,
        child: Text(
          text,
          style: kFontStyle14,
        ),
      ),
    );
  }
}
