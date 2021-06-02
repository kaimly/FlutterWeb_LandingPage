import 'package:flutter/material.dart';
import 'package:robigo/themes/theme.dart';

class PaymentContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: scaffoldSecondaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              Text(
                "Payment Simplified",
                style: Theme.of(context).textTheme.headline4!.merge(TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor)),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                  text: TextSpan(
                      text: "Payment Caption\n",
                      style: Theme.of(context).textTheme.bodyText1,
                      children: <TextSpan>[
                    TextSpan(text: "Payment Caption\n"),
                    TextSpan(text: "and Coupons\n"),
                    TextSpan(
                        text: "0% Commission",
                        style: Theme.of(context).primaryTextTheme.subtitle1)
                  ]))
            ],
          ),
          Image.asset(
            "assets/images/fifith.png",
            scale: 1.5,
          )
        ],
      ),
    );
  }
}
