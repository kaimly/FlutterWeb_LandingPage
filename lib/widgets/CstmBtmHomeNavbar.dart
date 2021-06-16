import 'package:flutter/material.dart';
import 'package:robigo/screens/OrdersScreen/orderScreen.dart';
import 'package:robigo/themes/theme.dart';
import 'package:robigo/widgets/closeButton.dart';
// import 'package:velocity_x/velocity_x.dart';

class CustomBtmNavbarHomePage extends StatelessWidget {
  // showAlertDialogg(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return OrderScreen();
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 14, top: 6),
      child: Row(
        children: [
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, OrderScreen.routName);
                // context.vxNav.push(Uri.parse(OrderScreen.routName));
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 100,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.red,
                  gradient: customgradient,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4)),
                      child: Text("3"),
                    ),
                    Text(
                      "Checkout",
                      style: Theme.of(context).accentTextTheme.headline6,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ],
                ),
              )),
          //!menu
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              print(":");
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                      color: Theme.of(context).accentColor, width: 2)),
              child: Text(
                "Menu",
                textAlign: TextAlign.center,
                style: Theme.of(context).accentTextTheme.bodyText1!.merge(
                    TextStyle(
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.w500)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
