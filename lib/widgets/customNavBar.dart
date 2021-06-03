import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Theme.of(context).primaryColor,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Robigo",
            style: Theme.of(context).primaryTextTheme.headline6,
          ),
          const SizedBox(
            width: 30,
          ),
          NavBarItem(
            title: "About",
          ),
          const SizedBox(
            width: 20,
          ),
          NavBarItem(
            title: "Terms & Conditions",
          ),
          const SizedBox(
            width: 20,
          ),
          NavBarItem(
            title: "Privacy Policy",
          ),
          const SizedBox(
            width: 20,
          ),
          NavBarItem(
            title: "Refund Policy",
          ),
          const SizedBox(
            width: 20,
          ),
          NavBarItem(
            title: "Contact Us",
          ),
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String title;
  NavBarItem({required this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1!.merge(
              TextStyle(color: Colors.white, fontWeight: FontWeight.w100)),
        ),
        const SizedBox(
          width: 20,
        )
      ],
    );
  }
}
