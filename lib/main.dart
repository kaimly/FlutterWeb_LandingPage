import 'package:flutter/material.dart';
import 'package:robigo/screens/homeScreen/HomeScreen.dart';
import 'package:robigo/screens/indexPage/IndexPage.dart';

import 'themes/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Robigo',
      debugShowCheckedModeBanner: false,
      theme: themes(),
      home: IndexPage(),
    );
  }
}
