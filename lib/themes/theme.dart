import 'package:flutter/material.dart';
import 'accentTexttheme.dart';
import 'primaryTextTheme.dart';
import 'textTheme.dart';

final scaffoldSecondaryColor = Color.fromRGBO(246, 246, 246, 1);

ThemeData themes() {
  return ThemeData(
    primarySwatch: Colors.blue,
    primaryTextTheme: primaryTextTheme(),
    accentTextTheme: accentTextTheme(),
    textTheme: texttheme(),
    primaryColor: Color.fromRGBO(4, 46, 153, 1),
    accentColor: Colors.yellow,
    scaffoldBackgroundColor: Colors.white,
    // appBarTheme: appBarTheme()
  );
}
