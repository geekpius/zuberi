import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color color;
  final TextStyle textStyle;
  final double minWidth;

  RoundedButton({this.onPressed, this.text, this.color, this.textStyle, this.minWidth = 294.0});

  @override
  Widget build(BuildContext context) {
    return Material(
      // elevation: 1.0,
      color: color,
      borderRadius: BorderRadius.circular(5.0),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: minWidth,
        height: 48.0,
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
