import 'package:flutter/material.dart';
import 'package:robigo/screens/OrdersScreen/orderScreen.dart';
import 'package:robigo/themes/theme.dart';
import 'package:robigo/widgets/allWIdgets.dart';
import 'package:robigo/widgets/closeButton.dart';

class CustomPopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void onPressed() {
      Navigator.pushNamed(context, OrderScreen.routName);
    }

    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 30, right: 30, top: 170),
      // color: Colors.blue,
      width: double.infinity,
      child: Column(
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
              //?redbox.png available as "asset"
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
                      OutlinedButton(
                          style: ButtonStyle(
                              side: MaterialStateProperty.all<BorderSide>(
                                  BorderSide(
                                      color: Theme.of(context).accentColor)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ))),
                          onPressed: () {},
                          child: Text(
                            "Watch Making Video",
                            style: Theme.of(context)
                                .accentTextTheme
                                .bodyText2!
                                .merge(TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).accentColor)),
                          ))
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
                    print("object");
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
