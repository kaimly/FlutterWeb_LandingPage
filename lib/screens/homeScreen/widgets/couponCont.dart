import 'package:flutter/material.dart';

class CouponContainer extends StatelessWidget {
  const CouponContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 60,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
              text: TextSpan(
                  text: "Give your customer\n",
                  style: Theme.of(context).textTheme.headline4!.merge(TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor)),
                  children: <TextSpan>[
                TextSpan(text: "Scratch & win offer\n"),
                TextSpan(text: "and Coupons")
              ])),
          Image.asset(
            "assets/images/fourth.png",
            // scale: 2.5,
          )
        ],
      ),
    );
  }
}