import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:robigo/screens/payment/payment.dart';
import 'package:robigo/themes/theme.dart';
import 'package:robigo/widgets/allWIdgets.dart';
import 'package:scratcher/scratcher.dart';

class ScratchScren extends StatefulWidget {
  static const routeName = "scratch";

  @override
  _ScratchScrenState createState() => _ScratchScrenState();
}

bool isScratched = false;

class _ScratchScrenState extends State<ScratchScren> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: bottomNavbarScratch(),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(
                  height: 300,
                ),
                Center(
                  child: Container(
                    // margin: EdgeInsets.only(left: 30),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(73, 127, 176, 0.18),
                        blurRadius: 37,
                        spreadRadius: -7,
                        offset: Offset(
                          0.0,
                          18.0,
                        ),
                      )
                    ]),
                    // height: 200,
                    width: 200,
                    child: Scratcher(
                      onThreshold: () {
                        setState(() {
                          isScratched = true;
                        });
                      },
                      color: Colors.white,
                      // threshold: 90,
                      threshold: 60,
                      accuracy: ScratchAccuracy.low,
                      image: Image.asset(
                        "assets/images/coupon.png",
                        fit: BoxFit.fill,
                      ),
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        height: 180,
                        // width: MediaQuery.of(context).size.width / 2 + 100,
                        // padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "5%",
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .primaryTextTheme
                                .headline5!
                                .merge(TextStyle(color: linearGradient2)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                isScratched
                    ? Text("Collect for the counter",
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .merge(TextStyle(fontWeight: FontWeight.w700)))
                    : SizedBox.shrink(),
                const SizedBox(
                  height: 10,
                ),
                isScratched
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 130),
                        child: CustomGradientBtn(
                          height: 40,
                          label: "Next",
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, PaymentScreeen.routeName);
                          },
                        ),
                      )
                    : SizedBox.shrink()
              ],
            ),
          )),
    );
  }
}

class bottomNavbarScratch extends StatelessWidget {
  const bottomNavbarScratch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 120,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [linearGradient1, linearGradient2],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "Scratch Card",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .merge(TextStyle(fontWeight: FontWeight.w700)),
          ),
          const SizedBox(
            height: 7,
          ),
          Text("Scratch the card above and you could earn Rewards",
              style: Theme.of(context).textTheme.bodyText1)
        ],
      ),
    );
  }
}
