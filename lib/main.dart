import 'package:flutter/material.dart';
import 'package:robigo/screens/OrdersScreen/orderScreen.dart';
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
      routes: {
        OrderScreen.routName: (ctx) => OrderScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen()
      },
      home: LoginScreen(),
    );
  }
}
