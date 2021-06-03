import 'package:flutter/material.dart';
import 'accentTexttheme.dart';
import 'primaryTextTheme.dart';
import 'textTheme.dart';

final scaffoldSecondaryColor = Color.fromRGBO(246, 246, 246, 1);
final acceentColor = Color.fromRGBO(241, 159, 2, 1);
final black = Colors.black;

ThemeData themes() {
  return ThemeData(
    primarySwatch: Colors.blue,
    primaryTextTheme: primaryTextTheme(),
    accentTextTheme: accentTextTheme(),
    textTheme: texttheme(),
    primaryColor: Color.fromRGBO(4, 46, 153, 1),
    accentColor: acceentColor,
    scaffoldBackgroundColor: Colors.white,
    // appBarTheme: appBarTheme()
  );
}
