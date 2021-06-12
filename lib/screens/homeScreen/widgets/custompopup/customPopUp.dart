import 'package:flutter/material.dart';
import 'package:robigo/screens/FoodChoice/foodChoices.dart';
import 'package:robigo/screens/OrdersScreen/orderScreen.dart';
import 'package:robigo/themes/theme.dart';
import 'package:robigo/widgets/allWIdgets.dart';
import 'package:robigo/widgets/closeButton.dart';

import 'outlineBtn.dart';

class CustomPopUp extends StatelessWidget {
  showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return FoodChoices();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
      insetPadding: EdgeInsets.symmetric(horizontal: 20),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: (MediaQuery.of(context).size.width),
                height: 250,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  child: Image.asset(
                    "assets/images/sample1.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  left: 6,
                  top: 6,
                  child: Image.asset(
                    "assets/images/greenbox.png",
                    scale: 2,
                  )),
              Positioned(top: 6, right: 6, child: CustomCloseButton())
              //?redbox.png available in "asset"
            ],
          ),
          Container(
            width: (MediaQuery.of(context).size.width),
            // height: fixedHeight ? 100 : null,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(110, 176, 245, 0.1),
                  blurRadius: 13,
                  spreadRadius: 0,
                  offset: Offset(
                    0.0,
                    5.0,
                  ),
                )
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            // padding: EdgeInsets.only(left: 10, bottom: 6, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "₹179",
                        style: Theme.of(context).textTheme.headline6!,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      //!should be displayed only if there is any video
                      OutlineBtn(
                        onTap: () {},
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Indiana Veggie Burger Combo",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "It's tangy, crunchy and loaded with fresh flavours. Veggie patty sits on a soft bagel-inspired bun spread with gouda cheese sauce and topped with crunchy onions, cucumber and tomato along with cheese slice. Served with potato wedges.....",
                    style: Theme.of(context).primaryTextTheme.bodyText1!,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomGradientBtn(
                  radiusTL: 0,
                  radiusTR: 0,
                  label: "Add",
                  height: 40,
                  onPressed: () {
                    showAlertDialog(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
