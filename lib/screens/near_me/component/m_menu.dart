import 'package:flutter/material.dart';

class MMenu extends StatelessWidget {
  Icon icon;
  String title;

  MMenu(this.icon, this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(border: Border.all()),
        child: SizedBox(
          height: 100,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [icon, Text(title)],
          ),
        ),
      ),
    );
  }
}
