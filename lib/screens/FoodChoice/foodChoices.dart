import 'package:flutter/material.dart';
import 'package:robigo/themes/theme.dart';
import 'package:robigo/widgets/allWIdgets.dart';
import 'package:robigo/widgets/closeButton.dart';
import 'package:robigo/widgets/customradio.dart';

import 'widgets/Sizecontain.dart';

class FoodChoices extends StatelessWidget {
  final contentPadding =
      EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 9);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      insetPadding: EdgeInsets.symmetric(horizontal: 20),
      contentPadding: EdgeInsets.only(
        top: 20,
      ),
      content: SingleChildScrollView(
        child: Column(
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
            CustomTiles(label: "Size 1"),
            CustomTiles(label: "Size 2"),
            CustomTiles(label: "Size 3"),
            // Heading(
            //   contentPadding: contentPadding,
            //   label: "Size",
            // ),
            // const SizedBox(height: 10),
            // SizeContainer(),
            // //? Options must inly be displayed according to the Sizes chosen
            // Heading(
            //   contentPadding: contentPadding,
            //   label: "Option",
            // ),
            // SizeContainer(),
            // Heading(
            //   contentPadding: contentPadding,
            //   label: "Add ons",
            // ),
            // SizeContainer(),
            CustomGradientBtn(
              label: "Add",
              onPressed: () {},
              radiusTL: 0,
              radiusTR: 0,
            ),
          ],
        ),
      ),
    );
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

class CustomTiles extends StatelessWidget {
  final String label;
  CustomTiles({required this.label});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      childrenPadding: const EdgeInsets.symmetric(horizontal: 20),
      title: Text(
        label,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      children: [
        Options(),
        Options(),
        Options(),
        Options(),
        Options(),
      ],
    );
  }
}

class Options extends StatelessWidget {
  const Options({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Option 1",
            style: Theme.of(context).primaryTextTheme.bodyText1,
          ),
          Text(
            "₹123",
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
