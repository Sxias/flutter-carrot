import 'package:carrotapp/models/recommend_store.dart';
import 'package:carrotapp/screens/near_me/component/m_menu.dart';
import 'package:carrotapp/screens/near_me/component/near_me_search_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class NearMeScreen extends StatelessWidget {
  const NearMeScreen();

  @override
  Widget build(BuildContext context) {
    print("NearMe Screen build");
    return Scaffold(
      appBar: _appbar(),
      body: Column(
        children: [
          NearMeSearchBox(),
          Wrap(
            children: [
              MMenu(Icon(Icons.person), "구인구직"),
              MMenu(Icon(Icons.edit_note), "과외/클래스"),
              MMenu(Icon(Icons.apple_rounded), "농수산물"),
              MMenu(Icon(CupertinoIcons.building_2_fill), "부동산"),
              MMenu(Icon(CupertinoIcons.car_detailed), "중고차"),
              MMenu(Icon(Icons.portrait), "전시/행사"),
            ],
          ),
          Text(
            "이웃들의 추천 가게",
            style: textTheme().displayMedium,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                RecommendStore rs = recommendStoreList[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(10)),
                    child: SizedBox(
                      height: 300,
                      width: 300,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 150,
                                height: 100,
                                child: Image.network("https://picsum.photos/id/237/200/300", fit: BoxFit.cover),
                              ),
                              SizedBox(
                                width: 150,
                                height: 100,
                                child: Image.network("https://picsum.photos/id/237/200/300", fit: BoxFit.cover),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text(rs.storeName),
                              Text(rs.location),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(rs.description),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text("후기 ${rs.commentCount}"),
                              Text("  "),
                              Text("관심 ${rs.likeCount}"),
                            ],
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "${rs.commentUser} ${rs.comment}",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: recommendStoreList.length,
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
      title: Text("내 근처"),
      actions: [
        IconButton(icon: const Icon(CupertinoIcons.pencil), onPressed: () {}),
        IconButton(icon: const Icon(CupertinoIcons.bell), onPressed: () {}),
      ],
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 0.5),
        child: Divider(
          thickness: 0.5,
          color: Colors.grey,
        ),
      ),
    );
  }
}
