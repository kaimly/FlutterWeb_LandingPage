import 'package:flutter/material.dart';
import 'package:robigo/themes/theme.dart';
import 'package:robigo/widgets/allWIdgets.dart';

class PaymentScreeen extends StatelessWidget {
  static const routeName = "payment";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        // padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Payment Options",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 1.2,
            ),
            PaymentModes(
                label: "Google Pay", imageUrl: "assets/images/gpay.png"),
            PaymentModes(
                label: "Phone Pe", imageUrl: "assets/images/phonpe.png"),
            PaymentModes(
                label: "Whatsapp Pay", imageUrl: "assets/images/whatsapp.png"),
            PaymentModes(label: "UPI ", imageUrl: "assets/images/upi.png"),
            PaymentModes(label: "Paytm", imageUrl: "assets/images/paytm.png"),
            const SizedBox(
              height: 30,
            ),
            Text("Pay at Counter",
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .merge(TextStyle(fontWeight: FontWeight.w700))),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130),
              child: CustomGradientBtn(
                height: 40,
                label: "Skip",
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, PaymentScreeen.routeName);
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class PaymentModes extends StatelessWidget {
  final String label;
  final String imageUrl;

  PaymentModes({required this.imageUrl, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: black,
                  child: CircleAvatar(
                    radius: 21,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      imageUrl,
                      scale: 1.5,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  label,
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            ),
          ),
          Divider(
            thickness: 1.2,
          )
        ],
      ),
    );
  }
}
