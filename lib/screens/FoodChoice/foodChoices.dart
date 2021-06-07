import 'package:flutter/material.dart';
import 'package:robigo/themes/theme.dart';
import 'package:robigo/widgets/allWIdgets.dart';
import 'package:robigo/widgets/closeButton.dart';

enum Size { one, two, three }

class FoodChoices extends StatelessWidget {
  final contentPadding =
      EdgeInsets.only(top: 10, bottom: 10, left: 9, right: 9);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      insetPadding: EdgeInsets.symmetric(horizontal: 20),
      contentPadding: EdgeInsets.only(top: 20),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: contentPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      const SizedBox(
                        height: 20,
                      ),
                      Text("Indiana Veggie Burger Combo",
                          style: Theme.of(context)
                              .primaryTextTheme
                              .subtitle1!
                              .merge(TextStyle(fontSize: 14))),
                    ],
                  ),
                ),
                Expanded(flex: 1, child: CustomCloseButton())
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Heading(
            contentPadding: contentPadding,
            label: "Size",
          ),
          const SizedBox(height: 10),
          SizeContainer(),
          Heading(
            contentPadding: contentPadding,
            label: "Option",
          ),
          SizeContainer(),
          CustomGradientBtn(
            label: "Add",
            onPressed: () {},
            radiusTL: 0,
            radiusTR: 0,
          )
        ],
      ),
    );
  }
}

class SizeContainer extends StatefulWidget {
  @override
  _SizeContainerState createState() => _SizeContainerState();
}

int selectedRadio = 0;

class _SizeContainerState extends State<SizeContainer> {
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  final contentPadding =
      EdgeInsets.only(top: 10, bottom: 10, left: 9, right: 9);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: contentPadding,
        child: Column(
          children: [
            RadioListTile(
              secondary: Text(
                "123",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              title: Text(
                "Size 1",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              value: 2,
              groupValue: selectedRadio,
              activeColor: Colors.blue,
              onChanged: (val) {
                print("Radio $val");
                // setSelectedRadio(val);
              },
            ),
            RadioListTile(
              secondary: Text(
                "123",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              title: Text(
                "Size 1",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              value: 3,
              groupValue: selectedRadio,
              activeColor: Colors.blue,
              onChanged: (val) {
                print("Radio $val");
                // setSelectedRadio(val);
              },
            ),
            RadioListTile(
              secondary: Text(
                "123",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              title: Text(
                "Size 1",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              value: 3,
              groupValue: selectedRadio,
              activeColor: Colors.blue,
              onChanged: (val) {
                print("Radio $val");
                // setSelectedRadio(val);
              },
            ),
          ],
        ));
  }
}

class Heading extends StatelessWidget {
  final String label;
  final EdgeInsets contentPadding;

  Heading({required this.contentPadding, required this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Color.fromRGBO(50, 198, 92, 0.14)),
      child: Padding(
        padding: contentPadding,
        child: Text(label, style: Theme.of(context).textTheme.bodyText1),
      ),
    );
  }
}
