import 'package:flutter/material.dart';
import './screens/allScreens.dart';

import 'themes/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
