import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:robigo/themes/theme.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (ctx) => Cstmobile(),
      desktop: (ctx) => CstmDesk(),
    );
  }
}

class CstmDesk extends StatelessWidget {
  const CstmDesk({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      color: scaffoldSecondaryColor,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "Improve Your in-Store",
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            " Experience",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Container(
                  // height: 600,
                  // width: 800,
                  child: Image.asset(
                "assets/images/second.png",
                scale: 1.5,
              )),
              Container(
                  // height: 600,
                  // width: 800,
                  child: Image.asset(
                "assets/images/third.png",
                scale: 1.5,
              )),
              const SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}

class Cstmobile extends StatelessWidget {
  const Cstmobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      color: scaffoldSecondaryColor,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            "Improve Your in-Store",
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            " Experience",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/second.png",
                // scale: 2.5,
              )),
          Container(
              // height: 600,

              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/third.png",
                // scale: 2.5,
              )),
          const SizedBox(),
        ],
      ),
    );
  }
}
