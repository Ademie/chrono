import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Agreement extends StatelessWidget {
  Agreement({
    Key? key,
  }) : super(key: key);

  final text = RichText(
    text: TextSpan(
      style: const TextStyle(
        fontSize: 10,
        color: Colors.white,
        fontWeight: FontWeight.w400,
        height: 1.6,
      ),
      children: <TextSpan>[
        TextSpan(
          text:
              'By tapping create an account and using Chronogram App, you agree to our ',
        ),
        TextSpan(
            text: 'Terms', style: const TextStyle(fontWeight: FontWeight.w700)),
        TextSpan(text: ' and '),
        TextSpan(
          text: 'Privacy Policy.',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    ),
    textAlign: TextAlign.center,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // padding: EdgeInsets.only(top: 50),
      width: 300,
      child: text,
    );
  }
}
