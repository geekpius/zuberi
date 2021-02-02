import 'package:flutter/material.dart';

import '../constants.dart';

class ScreenHeading extends StatelessWidget {
  final String text;

  ScreenHeading({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: kFontStyle20,
    );
  }
}
