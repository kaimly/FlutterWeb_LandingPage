import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:robigo/themes/theme.dart';

PreferredSizeWidget customAppBar(BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(70),
    child: NewGradientAppBar(
      gradient: customgradient,
      // leadingWidth: 60,

      leading: Container(
        margin: EdgeInsets.only(left: 10, top: 8),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(6)),
            child: Image.asset(
              "assets/images/pro.png",
              scale: 2,
            )),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 5,
          ),
          Text(
            "Calicut notebook",
            style: Theme.of(context).textTheme.headline6,
          ),
          // const SizedBox(
          //   height: 4,
          // ),
          Text(
            "Kochi,Kerala",
            style: Theme.of(context).primaryTextTheme.bodyText1,
          ),
        ],
      ),
    ),
  );
}
