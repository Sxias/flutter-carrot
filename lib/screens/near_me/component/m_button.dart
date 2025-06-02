import 'package:flutter/material.dart';

class MButton extends StatelessWidget {
  String content;

  MButton(this.content);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: Colors.grey),
        backgroundColor: Colors.white,
      ),
      child: Text(
        content,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
