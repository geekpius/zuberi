import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final Function onChanged;
  final String hintText;
  final bool obscureText;

  InputField({this.onChanged, this.hintText, this.obscureText=false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(color: Colors.black.withOpacity(0.8)),
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.3),
          fontWeight: FontWeight.w500,
          fontSize: 14.0,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFC4C4C4), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFC4C4C4), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
      ),
    );
  }
}
