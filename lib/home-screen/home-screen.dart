import 'package:flutter/material.dart';
import 'package:iShop/home-screen/tab-bar-view/tab-bar-view-detail/tab-bar-view-detail.dart';
import 'package:iShop/home-screen/tab-bar-view/tab-bar-view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.zero,
            child: Container(
              child: TopBarView(),
            ),
          ),
        ),
        body: TabBarViewDetail(),
      ),
    );
  }
}
