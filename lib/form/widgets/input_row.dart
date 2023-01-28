import 'package:chrono/form/widgets/text_input.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputRow extends StatefulWidget {
  final String content;
  final bool obscureText;
  TextEditingController nestedcontroller = TextEditingController();
   InputRow(
     this.nestedcontroller,
    this.content,
    this.obscureText, {
    Key? key,
  }) : super(key: key);


  @override
  State<InputRow> createState() => _InputRowState();
}

class _InputRowState extends State<InputRow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(widget.content),
            Text(
              '*',
              style: TextStyle(color: Colors.red, fontSize: 10),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: TextInput(
            controller: widget.nestedcontroller,
            hintText: widget.content,
            obscureText: widget.obscureText,
          ),
        ),
      ],
    );
  }
}
