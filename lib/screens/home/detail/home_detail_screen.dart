import 'package:flutter/material.dart';

class HomeDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Chatting Screen build");
    return Scaffold(
      appBar: AppBar(
        title: Text("detail"),
      ),
      body: Center(child: Text("HomeDetail Screen")),
    );
  }

  const HomeDetailScreen();
}
