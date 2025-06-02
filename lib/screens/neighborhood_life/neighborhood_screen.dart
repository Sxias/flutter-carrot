import 'package:carrotapp/models/neighborhood_life.dart';
import 'package:carrotapp/screens/components/m_divider.dart';
import 'package:carrotapp/screens/neighborhood_life/component/neighborhood_header.dart';
import 'package:carrotapp/screens/neighborhood_life/component/neighborhood_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NeighborhoodScreen extends StatelessWidget {
  const NeighborhoodScreen();

  @override
  Widget build(BuildContext context) {
    print("NeighborhoodScreen build");
    return Scaffold(
      appBar: _appbar(),
      body: Column(
        children: [
          Divider(),
          Expanded(
            child: Column(
              children: [
                NeighborhoodHeader(),
                MDivider(),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      NeighborhoodLife n = neighborhoodLifeList[index];
                      return NeighborhoodListItem(n: n);
                    },
                    separatorBuilder: (context, index) => Divider(
                      thickness: 10,
                      color: Colors.grey,
                    ),
                    itemCount: neighborhoodLifeList.length,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
      title: Text("동네생활"),
      actions: [
        IconButton(icon: Icon(CupertinoIcons.search), onPressed: () {}),
        IconButton(icon: Icon(CupertinoIcons.plus_rectangle_on_rectangle), onPressed: () {}),
        IconButton(icon: Icon(CupertinoIcons.bell), onPressed: () {}),
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
