import 'package:flutter/material.dart';

import 'package:robigo/widgets/customNavBar.dart';
import './widgets/allwidgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(context: context),
        body: SingleChildScrollView(
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
        bottomNavigationBar: CustomBottomNavBar());
  }
}
