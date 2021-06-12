import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:robigo/screens/ScratchScreen/scratchScreen.dart';
import 'package:robigo/themes/theme.dart';
import 'package:robigo/widgets/allWIdgets.dart';
import 'package:robigo/widgets/closeButton.dart';

import 'widgets/orderItem.dart';

class OrderScreen extends StatelessWidget {
  static const routName = "/orders";
  @override
  Widget build(BuildContext context) {
    const constPadding = EdgeInsets.only(left: 20, right: 20, top: 9);
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
            child: CustomGradientBtn(
              label: "Place Order",
              onPressed: () {
                Navigator.pushReplacementNamed(context, ScratchScren.routeName);
              },
              radiusBL: 6,
              radiusBR: 6,
              radiusTL: 6,
              radiusTR: 6,
            ),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your Orders",
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .merge(TextStyle(fontWeight: FontWeight.w600)),
                      ),
                      CustomCloseButton(
                        isClose: false,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                OrderItem(),
                OrderItem(),
                OrderItem(),
                OrderItem(),
                Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      " ₹321",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
