import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iShop/account/account.dart';
import 'package:iShop/bottom-navigation-bar/bottom-navigation-bar.dart';
import 'package:iShop/chat/chat.dart';
import 'package:iShop/home-screen/home-screen.dart';
import 'package:iShop/inbox/inbox.dart';
import 'package:iShop/offers/offers.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _tabSelected = 1;

  Widget _getTab(int tabIndex) {
    final tabs = [
      HomeScreen(),
      Chat(),
      Inbox(),
      Offers(),
      Account(),
    ];
    return tabs[tabIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.orange,
        title: Container(
          height: 35,
          margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: TextField(
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.black)),
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.location_on),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.location_on),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: _getTab(_tabSelected),
      bottomNavigationBar: BottomNaviBar(
        selectedIndex: _tabSelected,
        onTabSelected: (index) => setState(
          () {
            _tabSelected = index;
          },
        ),
      ),
    );
  }
}
