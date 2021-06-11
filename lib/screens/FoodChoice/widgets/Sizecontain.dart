import 'package:flutter/material.dart';

enum Size { one, two, three, four }

class SizeContainer extends StatefulWidget {
  @override
  _SizeContainerState createState() => _SizeContainerState();
}

Size? _selectedRadio = Size.one;

class _SizeContainerState extends State<SizeContainer> {
  final contentPadding = EdgeInsets.only(top: 0, bottom: 0, left: 9, right: 9);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: contentPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Size 1",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Row(
                  children: [
                    Text(
                      " ₹123",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Radio(
                      value: Size.one,
                      groupValue: _selectedRadio,
                      onChanged: (Size? val) {
                        print("Radio $val");
                        // setSelectedRadio(val);
                        setState(() {
                          _selectedRadio = val;
                        });
                      },
                    )
                  ],
                )
              ],
            )),
        Padding(
            padding: contentPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Size 1",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Row(
                  children: [
                    Text(
                      " ₹123",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Radio(
                      value: Size.two,
                      groupValue: _selectedRadio,
                      onChanged: (Size? val) {
                        print("Radio $val");
                        // setSelectedRadio(val);
                        setState(() {
                          _selectedRadio = val;
                        });
                      },
                    )
                  ],
                )
              ],
            )),
        Padding(
            padding: contentPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Size 1",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Row(
                  children: [
                    Text(
                      " ₹123",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Radio(
                      value: Size.three,
                      groupValue: _selectedRadio,
                      onChanged: (Size? val) {
                        print("Radio $val");
                        // setSelectedRadio(val);
                        setState(() {
                          _selectedRadio = val;
                        });
                      },
                    )
                  ],
                )
              ],
            ))
      ],
    );
  }
}
