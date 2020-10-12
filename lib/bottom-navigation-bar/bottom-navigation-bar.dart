import 'package:flutter/material.dart';

class BottomNaviBar extends StatefulWidget {
  final int selectedIndex;
  final void Function(int index) onTabSelected;

  const BottomNaviBar({
    Key key,
    @required this.selectedIndex,
    @required this.onTabSelected,
  }) : super(key: key);

  @override
  _BottomNaviBarState createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: widget.selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              // ignore: deprecated_member_use
              title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              // ignore: deprecated_member_use
              title: Text('Chat')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              // ignore: deprecated_member_use
              title: Text('Inbox')),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            // ignore: deprecated_member_use
            title: Text('Offers'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            // ignore: deprecated_member_use
            title: Text('Account'),
          ),
        ],
        onTap: widget.onTabSelected);
  }
}
