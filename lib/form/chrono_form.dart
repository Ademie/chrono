import 'package:chrono/form/widgets/chrono_divider.dart';
import 'package:chrono/form/widgets/flex_space.dart';
import 'package:chrono/form/widgets/grad_button.dart';
import 'package:chrono/form/widgets/have_account.dart';
import 'package:chrono/form/widgets/input_row.dart';
import 'package:chrono/form/widgets/social_button.dart';

import 'package:flutter/material.dart';


class ChronoForm extends StatefulWidget {
  const ChronoForm(
    this.nestedContent,
    this.nestedAuthAction,
    this.nestedMyFunction,
    
     {
    Key? key,
    required this.height,
    required this.buttonContent, 
  }) : super(key: key);

  final double height;
  final String nestedContent;
  final String nestedAuthAction;
  final String buttonContent;
  final Function nestedMyFunction;
  

  @override
  State<ChronoForm> createState() => _ChronoFormState();
}

class _ChronoFormState extends State<ChronoForm> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();

  // void registerFunction() async {
  //   bool shouldNavigate = await register(_emailField.text, _passwordField.text);

  //   if (shouldNavigate) {
  //     // ignore: use_build_context_synchronously
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => Splash('Record available times'),
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        padding: EdgeInsets.all(20),
        height: widget.height * 0.65,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InputRow(_emailField, 'Email', false),
              FlexSpace(0.2),
              InputRow(_passwordField, 'Password', true),
              Text(
                'Note: Password is 8 - 10 digit long. You can use numbers, letters and symbols.',
                style: TextStyle(color: Colors.red, fontSize: 10),
              ),
              FlexSpace(0.2),

              // GradButton(registerFunction, content: widget.buttonContent),
              GradButton(widget.nestedMyFunction,
                  content: widget.buttonContent),

              ChronoDivider(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                SocialButton(
                    content: 'Facebook', imageUrl: "assets/facebook.png"),
                SocialButton(content: 'Google', imageUrl: "assets/google.png"),
              ]),
              FlexSpace(0.2),
              HaveAccount(widget.nestedContent, widget.nestedAuthAction),
              FlexSpace(0.4),
            ]),
      ),
    );
  }
}
