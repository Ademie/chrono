import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // final width;
  final foregroundColor; // ignore: prefer_typing_uninitialized_variables
  final backgroundColor; // ignore: prefer_typing_uninitialized_variables
  final content; // ignore: prefer_typing_uninitialized_variables
  const Button(
      {Key? key,
      this.foregroundColor,
      // this.width,
      this.backgroundColor,
      this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      width: 240,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            foregroundColor: foregroundColor,
            backgroundColor: backgroundColor,
            padding: EdgeInsets.symmetric(vertical: 14)),
        onPressed: () {},
        child: Text(
          content,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'poppins',
            fontWeight: FontWeight.w500,
            height: 1.6,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
