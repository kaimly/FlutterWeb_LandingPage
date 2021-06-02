import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:robigo/themes/theme.dart';

import 'package:robigo/widgets/customNavBar.dart';
import './widgets/allwidgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
        mobile: (ctx) => Scaffold(
              appBar: customAppBarMobile(context: context),
              drawer: CstmDrawer(),
              body: body(),
            ),
        desktop: (ctx) => Scaffold(
            appBar: customAppBarDesktop(context: context),
            body: body(),
            bottomNavigationBar: CustomBottomNavBar()));
  }
}

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
            Text(
              "About",
              style: Theme.of(context).textTheme.bodyText1!.merge(
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w100)),
            ),
          ],
        ),
      ),
    );
  }
}

Widget body() {
  return SafeArea(
    child: SingleChildScrollView(
      child: Column(
        children: [
          TopContainer(),
          SecondContainer(),
          CouponContainer(),
          PaymentContainer(),
          BottomContainer(),
        ],
      ),
    ),
  );
}
