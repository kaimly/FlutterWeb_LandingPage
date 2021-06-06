import 'package:flutter/material.dart';

class CustomCloseButton extends StatelessWidget {
  final bool isClose;
  CustomCloseButton({this.isClose = true});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Image.asset(
        isClose ? "assets/images/close.png" : "assets/images/backbtn.png",
        scale: 2,
      ),
    );
  }
}
