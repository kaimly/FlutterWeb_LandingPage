import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/allScreens.dart';

import 'themes/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Robigo-user',
      debugShowCheckedModeBanner: false,
      theme: themes(),
      routes: {
        OrderScreen.routName: (ctx) => OrderScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
        ScratchScren.routeName: (ctx) => ScratchScren(),
        PaymentScreeen.routeName: (ctx) => PaymentScreeen()
      },
      home: HomeScreen(),
    );
  }
}
