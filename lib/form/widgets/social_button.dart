import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({Key? key, this.content, this.imageUrl}) : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final content;
  // ignore: prefer_typing_uninitialized_variables
  final imageUrl;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          side: BorderSide(width: 1.0, color: Colors.grey),
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 22)),
      onPressed: () {},
      icon: Image(
        image: AssetImage(imageUrl),
        width: 20,
        height: 15,
      ),
      label: SizedBox(
        width: 75,
        child: Text(content),
      ),
    );
  }
}