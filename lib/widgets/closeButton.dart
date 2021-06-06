import 'package:flutter/material.dart';

class CustomCloseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Image.asset(
        "assets/images/close.png",
        scale: 2,
      ),
    );
  }
}
