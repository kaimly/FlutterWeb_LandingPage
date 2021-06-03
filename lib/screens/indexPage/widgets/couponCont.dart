import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CouponContainer extends StatelessWidget {
  const CouponContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (ctx) => CstmMobile(),
      desktop: (ctx) => CstmmDesktop(),
      // tablet: (ctx) => CstmMobile(),
      // tablet: (ctx) => CstmmDesktop(),
    );
  }
}

class CstmMobile extends StatelessWidget {
  const CstmMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CstmText(
            platform: "MOBILE",
          ),
          Image.asset(
            "assets/images/fourthb.png",
            // scale: 1.2,
          )
        ],
      ),
    );
  }
}

class CstmmDesktop extends StatelessWidget {
  const CstmmDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //!right padding?
      // height: 600,
      padding: const EdgeInsets.only(left: 60, bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 120,
                ),
                CstmText(
                  platform: "WEB",
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Image.asset(
              "assets/images/fourthb.png",
              scale: 1,
            ),
          ),
          //  ScreenTypeLayout.builder(
          //   desktop: (ctx) => Image.asset(
          //     "assets/images/fourth.png",
          //     scale: 2,
          //   ),
          //   tablet: (ctx) => Image.asset(
          //     "assets/images/fourth.png",
          //     scale: 3.5,
          //   ),
          //   mobile: (ctx) => Image.asset(
          //     "assets/images/fourth.png",
          //     scale: 2,
          //   ),
          // )
        ],
      ),
    );
  }
}

class CstmText extends StatelessWidget {
  final String platform;
  CstmText({required this.platform});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "Give your customer\n",
            style: platform == "MOBILE"
                ? Theme.of(context).textTheme.headline6!.merge(TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor))
                : Theme.of(context).textTheme.headline4!.merge(TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor)),
            children: <TextSpan>[
          TextSpan(text: "Scratch & win offer\n"),
          TextSpan(text: "and Coupons")
        ]));
  }
}
