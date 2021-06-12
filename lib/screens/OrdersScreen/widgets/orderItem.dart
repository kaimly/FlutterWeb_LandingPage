import 'package:flutter/material.dart';
import 'package:robigo/screens/OrdersScreen/widgets/counter.dart';
import 'package:robigo/themes/theme.dart';

import '../orderScreen.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 1,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: 70,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset(
                    "assets/images/sample1.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Indiana Veggie Burger Combo",
                      style: Theme.of(context)
                          .primaryTextTheme
                          .subtitle1!
                          .merge(TextStyle(fontSize: 14))),
                  const SizedBox(
                    height: 20,
                  ),
                  Counter(),
                  // Row(
                  //   children: [
                  //     //!counter used here
                  //     Counter(),
                  //     const SizedBox(
                  //       width: 12,
                  //     ),
                  //     Text("1 x  ₹123")
                  //   ],
                  // )
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Text(
                  " ₹1263",
                  textAlign: TextAlign.right,
                  style: Theme.of(context).accentTextTheme.bodyText1!.merge(
                      TextStyle(color: black, fontWeight: FontWeight.w500)),
                ))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
