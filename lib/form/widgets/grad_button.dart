import 'package:flutter/material.dart';

class GradButton extends StatefulWidget {
  final foregroundColor; // ignore: prefer_typing_uninitialized_variables
  final backgroundColor; // ignore: prefer_typing_uninitialized_variables
  final content; // ignore: prefer_typing_uninitialized_variables
  final Function myFunction;
  GradButton(
    this.myFunction, {
    Key? key,
    this.foregroundColor,
    this.backgroundColor,
    this.content,
  }) : super(key: key);

  @override
  State<GradButton> createState() => _GradButtonState();
}

class _GradButtonState extends State<GradButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF004895), Color(0xFF00A2FF)],
          )),
      width: 350,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 10)),
        onPressed: () {
          widget.myFunction();
        },
        child: Text(
          widget.content,
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
