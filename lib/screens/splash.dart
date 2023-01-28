import 'package:chrono/components/agreement.dart';
import 'package:chrono/components/button.dart';
import 'package:chrono/components/gradient.dart';
import 'package:chrono/components/heading.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  final String text;
  const Splash(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage("assets/logo2.png"),
                    width: 240,
                  ),
                ]),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Heading(
                  textAlign: TextAlign.center,
                  content: text,
                  width: 230,
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 57, bottom: 69),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(bottom: 18),
              child: Button(
                foregroundColor: Colors.black,
                content: 'Create an account',
                // width: 295,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 50),
              child: Button(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xff00324F),
                content: 'Login',
                // width: 295,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Agreement()],
            )
          ],
        ),
      ),
    ));
  }
}
