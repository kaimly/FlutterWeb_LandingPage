import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:robigo/themes/theme.dart';
import 'package:robigo/widgets/allWIdgets.dart';
import 'package:robigo/widgets/closeButton.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const constPadding = EdgeInsets.only(left: 20, right: 20, top: 9);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(8)),
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Container(
          // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          height: 600,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: constPadding,
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
                        CustomCloseButton()
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  OrderItem(),
                  OrderItem(),
                  Padding(
                    padding: constPadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          "321",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              CustomGradientBtn(
                label: "Place Order",
                onPressed: () {},
                radiusBL: 8,
                radiusBR: 8,
                radiusTL: 0,
                radiusTR: 0,
              )
            ],
          )),
    );
  }
}

class OrderItem extends StatelessWidget {
  const OrderItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 9),
      child: Column(
        children: [
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
                    Row(
                      children: [
                        Counter(),
                        const SizedBox(
                          width: 7,
                        ),
                        Text("1 x 123")
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Text(
                    "#1263",
                    textAlign: TextAlign.right,
                    style: Theme.of(context)
                        .accentTextTheme
                        .bodyText2!
                        .merge(TextStyle(color: black)),
                  ))
            ],
          ),
          Divider(
            thickness: 1,
          )
        ],
      ),
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
    return Container(
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
            backgroundColor: black,
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
    );
  }
}
