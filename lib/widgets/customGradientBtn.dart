import 'package:flutter/material.dart';
import 'package:robigo/themes/theme.dart';

class CustomGradientBtn extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final double radiusTL;
  final double radiusTR;
  final double radiusBL;
  final double radiusBR;
  final double height;

  CustomGradientBtn({
    required this.label,
    required this.onPressed,
    this.radiusBL = 8,
    this.radiusBR = 8,
    this.radiusTL = 8,
    this.radiusTR = 8,
    this.height = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height == 0 ? null : height,
      // padding: EdgeInsets.all(13),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(radiusBL),
          bottomRight: Radius.circular(radiusBR),
          topLeft: Radius.circular(radiusTL),
          topRight: Radius.circular(radiusTR),
        ),
        gradient: LinearGradient(
          colors: [linearGradient1, linearGradient2],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: Theme.of(context)
              .accentTextTheme
              .bodyText1!
              .merge(TextStyle(fontWeight: FontWeight.w700)),
        ),
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
        ),
      ),
    );
  }
}
