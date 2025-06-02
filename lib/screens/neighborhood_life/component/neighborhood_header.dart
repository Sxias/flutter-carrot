import 'package:carrotapp/theme.dart';
import 'package:flutter/material.dart';

import '../../../models/neighborhood_life.dart';

class NeighborhoodHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: SizedBox(
            width: 45,
            height: 45,
            child: Image.network(
              'https://picsum.photos/id/780/200/100',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Text(
            lifeTitle,
            style: textTheme().bodyLarge,
          ),
        ),
        SizedBox(width: 8),
      ],
    );
  }
}
