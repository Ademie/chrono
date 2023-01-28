import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextInput extends StatefulWidget {
   TextInput({
    Key? key,
    required this.hintText,
    required this.obscureText,
    required this.controller
  }) : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final hintText;
  final bool obscureText;
  TextEditingController controller = TextEditingController();

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: TextFormField(
          controller: widget.controller,
          obscureText: widget.obscureText,
          style: TextStyle(fontSize: 14),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300, width: 2.0),
              borderRadius: BorderRadius.circular(25.0),
            ),
            contentPadding: const EdgeInsets.all(10),
            hintText: widget.hintText,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 2.0),
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
        ),
      ),
    );
  }
}
