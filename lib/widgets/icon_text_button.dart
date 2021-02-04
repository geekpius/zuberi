import 'package:flutter/material.dart';

import '../constants.dart';

class IconTextButton extends StatelessWidget {
  final Function onPressed;
  final Icon icon;
  final String text;
  final Color color;
  final TextStyle textStyle;
  final double minWidth;

  IconTextButton(
      {this.onPressed,
      this.icon,
      this.text,
      this.color,
      this.textStyle,
      this.minWidth = 294.0});

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
        child: Row(
          children: [
            Text(
              text,
              style: textStyle,
            ),
            icon
          ],
        ),
      ),
    );
  }
}
