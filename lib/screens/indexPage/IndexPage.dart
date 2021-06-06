import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:robigo/screens/indexPage/widgets/cstmFooterMobile.dart';

import 'package:robigo/screens/indexPage/widgets/customFooterDesk.dart';
import './widgets/allwidgets.dart';

//? LANDING PAGE
class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
        mobile: (ctx) => Scaffold(
              appBar: customAppBarMobile(context: context),
              // drawer: CstmDrawer(),
              drawer: SizedBox(),
              body: Body(
                isMobile: true,
              ),
              // bottomNavigationBar:
            ),
        desktop: (ctx) => Scaffold(
              appBar: customAppBarDesktop(context: context),
              body: Body(
                isMobile: false,
              ),
              // bottomNavigationBar: CustomBottomNavBar()
            ));
  }
}

class Body extends StatelessWidget {
  final bool isMobile;

  Body({required this.isMobile});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            TopContainer(),
            SecondContainer(),
            CouponContainer(),
            PaymentContainer(),
            BottomContainer(),
            isMobile ? CustomFooterMobile() : CustomFooterDsk()
          ],
        ),
      ),
    );
  }
}
