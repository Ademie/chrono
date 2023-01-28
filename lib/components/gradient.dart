import 'package:chrono/theme/colors.dart';
import 'package:flutter/material.dart';

class GradientScaffold extends StatelessWidget {
  final Widget child;

  const GradientScaffold(this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body: Container(
          // height: screenHeight * 0.5,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                ChronoColors.primary,
                ChronoColors.accent,
              ],
            )),
            child: SafeArea(child: child)));
  }
}
