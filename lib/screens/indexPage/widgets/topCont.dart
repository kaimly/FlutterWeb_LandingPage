import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      //!mobile
      mobile: (BuildContext context) => CustomMobile(),

      //!desktop
      desktop: (BuildContext context) => CustomDesktop(),
    );
  }
}

class CustomDesktop extends StatelessWidget {
  const CustomDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(),
              const SizedBox(
                height: 12,
              ),
              SecondLine()
            ],
          ),
          CustomImage(),
        ],
      ),
    );
  }
}

class CustomMobile extends StatelessWidget {
  const CustomMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(),
          const SizedBox(
            height: 12,
          ),
          SecondLine(),
          CustomImage(),
        ],
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "Go ahead & order\n",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .merge(TextStyle(fontWeight: FontWeight.bold)),
            children: <TextSpan>[
          TextSpan(text: "some yummy items\n"),
          TextSpan(text: "from the menu"),
        ]));
  }
}

class CustomImage extends StatelessWidget {
  const CustomImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/first.png",
      scale: 1.5,
    );
  }
}

class SecondLine extends StatelessWidget {
  const SecondLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Order food online from Robigo",
      style: Theme.of(context).primaryTextTheme.subtitle1,
    );
  }
}
