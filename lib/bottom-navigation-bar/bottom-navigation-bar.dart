import 'package:flutter/material.dart';
import 'package:iShop/home-page/home-page.dart';
import 'package:iShop/home-screen/home-screen.dart';

class BottomNaviBar extends StatefulWidget {
  @override
  _BottomNaviBarState createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  int _tabSelected = 1;

  Widget _getTab(int tabIndex) {
    final tabs = [
      HomePage(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
    ];
    return tabs[tabIndex];
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            // ignore: deprecated_member_use
            title: Text('Hi')),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            // ignore: deprecated_member_use
            title: Text('Hi')),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            // ignore: deprecated_member_use
            title: Text('Hi')),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          // ignore: deprecated_member_use
          title: Text('Hi'),
        ),
      ],
      onTap: (index) {
        setState(() {
          _tabSelected = index;
        });
      },
    );
  }
}
