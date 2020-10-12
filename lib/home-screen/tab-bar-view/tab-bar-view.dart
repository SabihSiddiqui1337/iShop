import 'package:flutter/material.dart';

class TopBarView extends StatefulWidget {
  @override
  _TopBarViewState createState() => _TopBarViewState();
}

class _TopBarViewState extends State<TopBarView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        indicatorColor: Colors.orange,
        labelColor: Colors.orange,
        unselectedLabelColor: Colors.grey,
        tabs: [
          Tab(
            text: 'All',
          ),
          Tab(
            text: 'Pick up',
          ),
          Tab(
            text: 'Shipping',
          ),
        ],
      ),
    );
  }
}
