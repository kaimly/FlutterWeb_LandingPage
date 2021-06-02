import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      text: "Lorem Ipsum Lorem \n",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .merge(TextStyle(fontWeight: FontWeight.bold)),
                      children: <TextSpan>[
                    TextSpan(text: "ipsum dolor sit amet\n"),
                    TextSpan(text: "consectetur dipi"),
                  ])),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Caption number two",
                style: Theme.of(context).primaryTextTheme.subtitle1,
              )
            ],
          ),
          Image.asset(
            "assets/images/first.png",
            // scale: 2.5,
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
