import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:velocity_x/velocity_x.dart';
import './screens/allScreens.dart';

import 'themes/theme.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
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
      initialRoute: HomeScreen.routeName,
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
