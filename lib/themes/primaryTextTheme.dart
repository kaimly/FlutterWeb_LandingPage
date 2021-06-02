import 'package:flutter/material.dart';

TextTheme primaryTextTheme() => TextTheme(
      caption: TextStyle(color: Colors.grey),
      headline2: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontFamily: 'poppins',
      ),
      headline5: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontFamily: 'poppins',
      ),
      headline6: TextStyle(
        color: Colors.white,
        // fontWeight: FontWeight.w400,
        fontFamily: 'poppins',
      ),
      subtitle1: TextStyle(
        color: Colors.black,
        fontFamily: 'poppins',
      ),
      subtitle2: TextStyle(
        color: Color.fromRGBO(185, 185, 185, 1),
        fontFamily: 'poppins',
      ),
      button: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 18,
        fontFamily: 'poppins',
      ),
      bodyText1: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 0.6),
        fontFamily: 'poppins',
      ),
      bodyText2: TextStyle(
          fontFamily: 'poppins',
          fontWeight: FontWeight.w500,
          color: Color.fromRGBO(146, 146, 146, 1)),
    );
