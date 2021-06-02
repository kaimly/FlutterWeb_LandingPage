import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:robigo/themes/theme.dart';

class PaymentContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (ctx) => XustomMobile(),
      desktop: (ctx) => XustomDeskTop(),
    );
  }
}

class XustomDeskTop extends StatelessWidget {
  const XustomDeskTop({
    Key? key,
  }) : super(key: key);

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
              TextArea()
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

class XustomMobile extends StatelessWidget {
  const XustomMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      color: scaffoldSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Payment Simplified",
            style: Theme.of(context).textTheme.headline6!.merge(TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor)),
          ),
          const SizedBox(
            height: 10,
          ),
          TextArea(),
          Image.asset(
            "assets/images/fifith.png",
            scale: 2.0,
          )
        ],
      ),
    );
  }
}

class TextArea extends StatelessWidget {
  const TextArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "Payment Caption\n",
            style: Theme.of(context).textTheme.bodyText1,
            children: <TextSpan>[
          TextSpan(text: "Payment Caption\n"),
          TextSpan(text: "and Coupons\n"),
          TextSpan(
              text: "0% Commission",
              style: Theme.of(context).primaryTextTheme.subtitle1)
        ]));
  }
}
