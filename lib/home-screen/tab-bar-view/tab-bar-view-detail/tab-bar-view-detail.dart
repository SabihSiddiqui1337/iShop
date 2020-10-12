import 'package:flutter/material.dart';
import 'package:iShop/home-screen/tab-bar-view/tab-bar-view-detail/pick-up-tab/pick-up-tab.dart';
import 'package:iShop/home-screen/tab-bar-view/tab-bar-view-detail/shipping-tab/shipping-tab.dart';

import 'all-tab/all-tab.dart';

class TabBarViewDetail extends StatefulWidget {
  @override
  _TabBarViewDetailState createState() => _TabBarViewDetailState();
}

class _TabBarViewDetailState extends State<TabBarViewDetail> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        AllTab(),
        PickUp(),
        Shipping(),
      ],
    );
  }
}
