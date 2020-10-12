import 'package:flutter/material.dart';
import 'package:iShop/home-screen/tab-bar-view/tab-bar-view-detail/all-tab/all-tab-model/all-tab-model.dart';

class AllTab extends StatefulWidget {
  @override
  _AllTabState createState() => _AllTabState();
}

class _AllTabState extends State<AllTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Newest first',
            ),
          ),
          IconButton(
            icon: Icon(Icons.arrow_downward),
            onPressed: () {},
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Price: Any',
            ),
          ),
          IconButton(
            icon: Icon(Icons.arrow_downward),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

// Widget _buildAllTab(BuildContext context, AllTabItem item) {
//   return ;
// }

//   final _allTab = [
//     AllTabItem(
//       title: 'Newest first',
//       icon: Icons.arrow_downward,
//     ),
//     AllTabItem(
//       title: 'Price: Any',
//       icon: Icons.arrow_downward,
//     ),
//   ];
// }
