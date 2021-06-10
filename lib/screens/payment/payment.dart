import 'package:flutter/material.dart';

class PaymentScreeen extends StatelessWidget {
  static const routeName = "payment";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        // padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Payment Options",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Divider(
              thickness: 1.2,
            )
          ],
        ),
      ),
    ));
  }
}
