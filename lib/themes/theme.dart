import 'package:flutter/material.dart';
import 'accentTexttheme.dart';
import 'primaryTextTheme.dart';
import 'textTheme.dart';

final scaffoldSecondaryColor = Color.fromRGBO(246, 246, 246, 1);
final acceentColor = Color.fromRGBO(241, 159, 2, 1);
final black = Colors.black;
final grey = Colors.grey;
final successColor = Colors.green;
final linearGradient1 = Color.fromRGBO(241, 159, 2, 1);
final linearGradient2 = Color.fromRGBO(250, 201, 99, 1);
final textformfieldfillcolor = Color.fromRGBO(232, 232, 232, 1);
final borderColor = Color.fromRGBO(228, 228, 228, 1);

final customgradient = LinearGradient(
    colors: [linearGradient1, linearGradient2],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft);

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
