import 'package:chrono/screens/entry.dart';
import 'package:chrono/screens/login.dart';
import 'package:chrono/screens/splash.dart';
import 'package:flutter/material.dart';

class Swipe extends StatefulWidget {
  const Swipe({super.key});

  @override
  State<Swipe> createState() => _SwipeState();
}

class _SwipeState extends State<Swipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: [
        Splash('Record available times'),
        Splash('Send or Share out link'),
        Splash('Relax! The rest is automatic'),
        Entry(),
        Login()
      ],
    ));
  }
}
