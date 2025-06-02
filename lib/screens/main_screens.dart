import 'package:carrotapp/screens/chatting/chatting_screen.dart';
import 'package:carrotapp/screens/home/home_screen.dart';
import 'package:carrotapp/screens/my_carrot/my_carrot_screen.dart';
import 'package:carrotapp/screens/near_me/near_me_screen.dart';
import 'package:carrotapp/screens/neighborhood_life/neighborhood_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget {
  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int selectedIndex = 0;
  List<int> loadPages = [0];

  void selectBottomMenu(int index) {
    selectedIndex = index;
    if (!loadPages.contains(index)) loadPages.add(index); // 0 , 1
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: [
          loadPages.contains(0) ? const HomeScreen() : Container(),
          loadPages.contains(1) ? const NeighborhoodScreen() : Container(),
          loadPages.contains(2) ? const NearMeScreen() : Container(),
          loadPages.contains(3) ? const ChattingScreen() : Container(),
          loadPages.contains(4) ? const MyCarrotScreen() : Container(),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Theme _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        // highlightColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        /* // 지금 사용 안함
        showSelectedLabels: true,
        showUnselectedLabels: false,
        */
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.black54,
        selectedFontSize: 12.0,
        unselectedFontSize: 12.0,
        currentIndex: selectedIndex,
        // 매개변수 자동 전달
        onTap: selectBottomMenu,
        items: [
          BottomNavigationBarItem(label: "홈", icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(label: "동네 생활", icon: Icon(CupertinoIcons.square_on_square)),
          BottomNavigationBarItem(label: "내 근처 정보", icon: Icon(Icons.location_on)),
          BottomNavigationBarItem(label: "채팅", icon: Icon(CupertinoIcons.chat_bubble_text)),
          BottomNavigationBarItem(label: "내 당근", icon: Icon(CupertinoIcons.person)),
        ],
      ),
    );
  }
}
