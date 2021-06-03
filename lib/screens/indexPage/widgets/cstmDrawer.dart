import 'package:flutter/material.dart';

class CstmDrawer extends StatelessWidget {
  const CstmDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.only(top: 30),
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            // Text(
            //   "About",
            //   style: Theme.of(context).textTheme.bodyText1!.merge(
            //       TextStyle(color: Colors.white, fontWeight: FontWeight.w100)),
            // ),
          ],
        ),
      ),
    );
  }
}
