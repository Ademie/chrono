import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final Widget child;
  const Avatar({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 117),
      width: 240,
      height: 240,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue.shade900,
          width: 2.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: child,
    );
  }
}
