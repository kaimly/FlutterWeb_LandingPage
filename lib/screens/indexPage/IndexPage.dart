import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:robigo/widgets/customBtmNavBar.dart';
import './widgets/allwidgets.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
        mobile: (ctx) => Scaffold(
              appBar: customAppBarMobile(context: context),
              drawer: CstmDrawer(),
              body: body(),
              bottomNavigationBar: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                height: 70,
                color: Theme.of(context).primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Robigo",
                      style: Theme.of(context).primaryTextTheme.headline6,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            NavBarItems(
                              title: "Terms & Conditions",
                            ),
                            NavBarItems(
                              title: "Privacy Policy",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            NavBarItems(
                              title: "About",
                            ),
                            NavBarItems(
                              title: "Contact Us",
                            ),
                            NavBarItems(
                              title: "Refund Policy",
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
        desktop: (ctx) => Scaffold(
            appBar: customAppBarDesktop(context: context),
            body: body(),
            bottomNavigationBar: CustomBottomNavBar()));
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

class NavBarItems extends StatelessWidget {
  final String title;
  NavBarItems({required this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).accentTextTheme.bodyText2!,
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}
