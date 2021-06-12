import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:robigo/themes/theme.dart';
import 'package:robigo/widgets/allWIdgets.dart';

PreferredSize desktopAppbar(BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(70),
    child: NewGradientAppBar(
        // centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 8),
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)),
                  child: Image.asset(
                    "assets/images/pro.png",
                    scale: 2,
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
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
            const SizedBox(
              width: 350,
            ),
            Container(
              width: 250,
              padding: const EdgeInsets.only(
                top: 16,
                right: 12,
              ),
              child: CustomTextFormField(
                hintText: "Search",
                isSearchIcon: true,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.5)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/images/orders.png",
                    scale: 2.5,
                  ),
                  Text(
                    "Orders",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.merge(TextStyle(fontSize: 10)),
                  )
                ],
              ),
            ),
          ],
        ),
        gradient: customgradient),
  );
}
