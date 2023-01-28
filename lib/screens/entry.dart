import 'package:chrono/components/heading.dart';

import 'package:chrono/form/widgets/chrono_divider.dart';
import 'package:chrono/form/widgets/flex_space.dart';

import 'package:chrono/form/widgets/have_account.dart';
import 'package:chrono/form/widgets/input_row.dart';
import 'package:chrono/form/widgets/social_button.dart';
import 'package:chrono/net/flutterfire.dart';
import 'package:chrono/screens/splash.dart';
import 'package:flutter/material.dart';

class Entry extends StatefulWidget {
  const Entry({
    super.key,
  });

  @override
  State<Entry> createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();

  void registerFunction() async {
    bool shouldNavigate = await register(_emailField.text, _passwordField.text);

    if (shouldNavigate) {
      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Splash('Signed Up'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FlexSpace(0.2),
              Container(
                padding: EdgeInsets.only(left: 20, bottom: 30),
                child: Image(
                  image: AssetImage('assets/Chronogram.png'),
                  width: 120,
                ),
              ),
              Heading(
                content: 'Create an account',
                padding: EdgeInsets.only(left: 20),
                width: 230,
                textAlign: TextAlign.left,
              ),

              // CHRONOFORM
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  height: height * 0.65,
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
                        // Gradient button

                        Container(
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
                              registerFunction();
                            },
                            child: Text(
                              'Create an account',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w500,
                                height: 1.6,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        ChronoDivider(),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SocialButton(
                                  content: 'Facebook',
                                  imageUrl: "assets/facebook.png"),
                              SocialButton(
                                  content: 'Google',
                                  imageUrl: "assets/google.png"),
                            ]),
                        FlexSpace(0.2),
                        HaveAccount("Do you have an account?", 'Log in'),
                        FlexSpace(0.4),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
