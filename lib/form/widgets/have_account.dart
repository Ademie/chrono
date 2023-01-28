import 'package:chrono/theme/colors.dart';
import 'package:flutter/material.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount(
    this.content,
    this.authAction, {
    Key? key,
  }) : super(key: key);
  final String content;
  final String authAction;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          content,
          style: TextStyle(color: Colors.black),
        ),
        TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(
              ChronoColors.accent,
            ),
          ),
          onPressed: () {
            
            // Navigator.pop(context);
            //           Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => Entry()),
            // );
          },
          child: Text(authAction),
        ),
      ],
    );
  }
}
