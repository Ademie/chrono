import 'package:flutter/material.dart';

class FlexSpace extends StatelessWidget {
  final double heightFactor;
  const FlexSpace(
    this.heightFactor, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FractionallySizedBox(
        heightFactor: heightFactor,
      ),
    );
  }
}