import 'package:carrotapp/models/neighborhood_life.dart';
import 'package:carrotapp/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NeighborhoodListItem extends StatelessWidget {
  final NeighborhoodLife n;

  const NeighborhoodListItem({super.key, required this.n});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.black12,
                child: Text(
                  n.category,
                  style: textTheme().displayMedium,
                ),
              ),
              Text(n.date),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              CircleAvatar(backgroundImage: NetworkImage("https://picsum.photos/id/237/200/300")),
              SizedBox(width: 8),
              Text(
                n.userName,
                style: textTheme().displayMedium,
              ),
              SizedBox(width: 4),
              Text(" 자동 인증 ${n.authCount}회"),
            ],
          ),
          SizedBox(height: 10),
          Text(
            n.content,
            style: textTheme().bodyLarge,
          ),
          SizedBox(height: 10),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              "https://picsum.photos/id/237/200/300",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(CupertinoIcons.smiley),
              Text("공감하기"),
              Text("  "),
              Icon(Icons.chat),
              Text("댓글 작성 ${n.commentCount}"),
            ],
          ),
        ],
      ),
    );
  }
}
