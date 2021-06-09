import 'package:flutter/material.dart';
import 'package:robigo/screens/homeScreen/widgets/customPopUp.dart';

import 'package:robigo/widgets/allWIdgets.dart';

class FoodItem extends StatelessWidget {
  final bool fav = false;
  final int time, rating;
  final String title;
  final double price;
  final bool offerStatus;
  final String image;
  final EdgeInsets margin;
  // final ResturantModel data;
  final bool fixedHeight;
  final bool isDescSection;

  FoodItem(
      {this.time = 2,
      required this.price,
      required this.title,
      // @required this.data,
      required this.image,
      this.offerStatus = false,
      this.margin = const EdgeInsets.only(right: 10),
      this.rating = 4,
      this.fixedHeight = false,
      this.isDescSection = false});

  showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomPopUp();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromRGBO(228, 228, 228, 1)),
          borderRadius: BorderRadius.circular(8)),
      margin: margin,
      child: GestureDetector(
        onTap: () {
          showAlertDialog(context);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width / 2) - 20,
                  height: 140,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(4),
                    ),
                    child: Image.asset(
                      image,
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
                //?redbox.png available as "asset"
              ],
            ),
            const SizedBox(height: 10),
            Container(
              width: (MediaQuery.of(context).size.width / 2) - 20,
              height: fixedHeight ? 100 : null,
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
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                ),
              ),
              padding: EdgeInsets.only(left: 10, bottom: 6, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyText1,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          "₹${price.toString()}",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: CustomGradientBtn(
                          height: 30,
                          radiusBL: 4,
                          radiusBR: 4,
                          label: "Add",
                          radiusTL: 4,
                          radiusTR: 4,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
