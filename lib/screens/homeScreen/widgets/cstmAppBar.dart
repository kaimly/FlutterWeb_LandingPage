import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar({required BuildContext context}) {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Robigo",
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
            const SizedBox(width: 20),
            Text(
              "Get a Demo",
              style: Theme.of(context).textTheme.bodyText1!.merge(
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w300)),
            ),
          ],
        ),
        Text("Login", style: Theme.of(context).primaryTextTheme.headline6)
      ],
    ),
    // actions: [],
  );
}