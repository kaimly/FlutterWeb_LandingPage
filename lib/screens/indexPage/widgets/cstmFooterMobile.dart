import 'package:flutter/material.dart';

class CustomFooterMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 70,
      color: Theme.of(context).primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Robigo",
            style: Theme.of(context).primaryTextTheme.headline6,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavBarItems(
                    title: "Terms & Conditions",
                  ),
                  NavBarItems(
                    title: "Privacy Policy",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavBarItems(
                    title: "About",
                  ),
                  NavBarItems(
                    title: "Contact Us",
                  ),
                  NavBarItems(
                    title: "Refund Policy",
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class NavBarItems extends StatelessWidget {
  final String title;
  NavBarItems({required this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).accentTextTheme.bodyText2!,
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}
