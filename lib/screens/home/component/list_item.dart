import 'package:carrotapp/core/my_util.dart';
import 'package:carrotapp/models/product.dart';
import 'package:carrotapp/theme.dart';
import 'package:flutter/cupertino.dart';

class ListItem extends StatelessWidget {
  final Product p;

  const ListItem({super.key, required this.p});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Container(
        height: 115,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                "https://picsum.photos/id/237/200/300", // p.urlToImage in mobile
                width: 115,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${p.title}",
                      style: textTheme().displayLarge,
                    ),
                    Text(
                      "${p.address} • ${p.publishedAt}",
                      style: textTheme().bodyMedium,
                    ),
                    Text(
                      "${p.price.toMoney()}원",
                      style: textTheme().displayMedium,
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Spacer(),
                        Icon(CupertinoIcons.chat_bubble_2),
                        Text("${p.commentsCount}"),
                        Icon(CupertinoIcons.heart),
                        Text("${p.heartCount}"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
