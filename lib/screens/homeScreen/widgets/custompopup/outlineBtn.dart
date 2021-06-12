import 'package:flutter/material.dart';

class OutlineBtn extends StatelessWidget {
  final Function onTap;
  OutlineBtn({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(
            side: MaterialStateProperty.all<BorderSide>(
                BorderSide(color: Theme.of(context).accentColor)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ))),
        onPressed: () => onTap(),
        child: Text(
          "Watch Making Video",
          style: Theme.of(context).accentTextTheme.bodyText2!.merge(TextStyle(
              fontWeight: FontWeight.w400,
              color: Theme.of(context).accentColor)),
        ));
  }
}
