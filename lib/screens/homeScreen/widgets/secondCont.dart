import 'package:flutter/material.dart';
import 'package:robigo/themes/theme.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({
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
                // scale: 2.5,
              )),
              Container(
                  // height: 600,
                  // width: 800,
                  child: Image.asset(
                "assets/images/third.png",
                // scale: 2.5,
              )),
              const SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
