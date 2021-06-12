import 'package:flutter/material.dart';
import 'package:robigo/themes/theme.dart';

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
              gradient: customgradient,
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
