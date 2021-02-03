import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.black.withOpacity(0.1),
      height: 20,
      thickness: 1,
    );
  }
}
