import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:robigo/themes/theme.dart';
import 'package:robigo/widgets/allWIdgets.dart';
import 'package:robigo/widgets/closeButton.dart';

class OrderScreen extends StatelessWidget {
  static const routName = "/orders";
  @override
  Widget build(BuildContext context) {
    const constPadding = EdgeInsets.only(left: 20, right: 20, top: 9);
    return Scaffold(
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
          child: CustomGradientBtn(
            label: "Place Order",
            onPressed: () {},
            radiusBL: 6,
            radiusBR: 6,
            radiusTL: 6,
            radiusTR: 6,
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your Orders",
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .merge(TextStyle(fontWeight: FontWeight.w600)),
                      ),
                      CustomCloseButton(
                        isClose: false,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                OrderItem(),
                OrderItem(),
                OrderItem(),
                OrderItem(),
                Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      " ₹321",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

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

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

int _itemCount = 0;

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 80,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [linearGradient1, linearGradient2],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              ),
              borderRadius: BorderRadius.circular(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              GestureDetector(
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 20,
                ),
                onTap: () {
                  if (_itemCount == 0) return null;
                  setState(
                    () => _itemCount--,
                  );
                },
              ),
              CircleAvatar(
                backgroundColor: Color.fromRGBO(0, 0, 0, 0.32),
                radius: 12,
                child: Text(
                  _itemCount.toString(),
                  style: Theme.of(context).accentTextTheme.bodyText1,
                ),
              ),
              GestureDetector(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                ),
                onTap: () {
                  setState(
                    () => _itemCount++,
                  );
                },
              ),
              const SizedBox(),
            ],
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Text("$_itemCount x  ₹123")
      ],
    );
  }
}
