import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home-page/home-page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      home: HomePage(),
    );
  }
}
