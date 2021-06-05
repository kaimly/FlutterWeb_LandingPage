import 'package:flutter/material.dart';

class CstmRoundedButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final EdgeInsets padding;
  final double borderRadius;
  final Color color;

  CstmRoundedButton(
      {this.borderRadius = 73,
      required this.label,
      required this.onPressed,
      required this.padding,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          padding: MaterialStateProperty.all<EdgeInsets>(padding),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ))),
      onPressed: () => onPressed,
      child: Text(label,
          style: Theme.of(context)
              .primaryTextTheme
              .bodyText1!
              .merge(TextStyle(color: Colors.white))),
    );
  }
}

// decoration: BoxDecoration(
//         color: Colors.red,
//         gradient: LinearGradient(
//           colors: [
//             Color.fromRGBO(241, 159, 2, 1),
//             Color.fromRGBO(250, 201, 99, 1),
//           ],
//           begin: Alignment.centerLeft,
//           end: Alignment.centerRight,
//         ),
//       ),
