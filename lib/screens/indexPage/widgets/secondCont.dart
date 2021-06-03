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
      // tablet: (ctx) => SizedBox(),
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
            "Experience",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImages(imageUrl: "second"),
              CustomImages(imageUrl: "third")
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
      // padding: const EdgeInsets.symmetric(horizontal: 12),
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
          CustomImages(imageUrl: "second"),
          CustomImages(imageUrl: "third"),
          const SizedBox(),
        ],
      ),
    );
  }
}

class CustomImages extends StatelessWidget {
  final String imageUrl;
  CustomImages({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 600,
        // width: 800,
        child: Image.asset(
      "assets/images/$imageUrl.png",
      scale: 1.5,
    ));
  }
}
