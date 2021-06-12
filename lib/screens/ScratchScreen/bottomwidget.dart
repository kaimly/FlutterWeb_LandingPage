import 'package:flutter/material.dart';
import 'package:robigo/themes/theme.dart';

class BottomNavbarScratch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 120,
      decoration: BoxDecoration(
        gradient: customgradient,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "Scratch Card",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .merge(TextStyle(fontWeight: FontWeight.w700)),
          ),
          const SizedBox(
            height: 7,
          ),
          Text("Scratch the card above and you could earn Rewards",
              style: Theme.of(context).textTheme.bodyText1)
        ],
      ),
    );
  }
}
