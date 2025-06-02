import 'package:carrotapp/screens/components/m_divider.dart';
import 'package:carrotapp/screens/near_me/component/m_button.dart';
import 'package:flutter/material.dart';

class NearMeSearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.black12,
              focusColor: Colors.transparent,
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: "좌동 주변 가게를 찾아보세요.",
              hintStyle: TextStyle(color: Colors.black87),
            ),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              MButton("인테리어"),
              SizedBox(width: 10),
              MButton("학원"),
              SizedBox(width: 10),
              MButton("이사"),
              SizedBox(width: 10),
              MButton("카페"),
              SizedBox(width: 10),
              MButton("용달"),
            ],
          ),
        ),
        MDivider(),
      ],
    );
  }
}
