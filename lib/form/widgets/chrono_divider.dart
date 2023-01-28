import 'package:flutter/material.dart';

class ChronoDivider extends StatelessWidget {
  const ChronoDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade400),
              height: 1,
              margin: EdgeInsets.symmetric(horizontal:10, vertical: 20),
            ),
          ),
          Text(
            "OR",
            style: TextStyle(color: Colors.grey.shade400),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade400),
              height: 1,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            ),
          ),
        ],
      ),
    );
  }
}