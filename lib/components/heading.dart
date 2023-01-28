import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({Key? key, this.content, this.textAlign, required this.width, this.color, this.padding})
      : super(key: key);

  final content; // ignore: prefer_typing_uninitialized_variables
  final color; // ignore: prefer_typing_uninitialized_variables
  final padding; // ignore: prefer_typing_uninitialized_variables
  final double width;
  final textAlign; // ignore: prefer_typing_uninitialized_variables

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SizedBox(
        width: width,
        child: Text(content,
            style: TextStyle(
              color: color,
              fontSize: 24,
              fontFamily: 'poppins',
              fontWeight: FontWeight.w600,
              height: 1.6, // desired height / fontSize
            ),
            // textAlign: TextAlign.center,
            textAlign: textAlign,
            ),
      ),
    );
  }
}
