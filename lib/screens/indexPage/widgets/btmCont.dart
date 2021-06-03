import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:robigo/widgets/customTextFormField.dart';

class BottomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bgMask.png"),
                    fit: BoxFit.cover)),
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Center(
                child: Text("Get Free Demo",
                    style: Theme.of(context).textTheme.headline6!.merge(
                        TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor))),
              ),
              const SizedBox(
                height: 60,
              ),
              ScreenTypeLayout.builder(
                mobile: (ctx) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: CustomTextFormField(
                    hintText: "Email",
                  ),
                ),
                desktop: (ctx) => Container(
                  width: MediaQuery.of(context).size.width / 3,
                  color: Colors.white,
                  child: CustomTextFormField(
                    hintText: "Email",
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 27, vertical: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(73),
                      color: Theme.of(context).primaryColor),
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Get Demo",
                        style: Theme.of(context)
                            .primaryTextTheme
                            .bodyText1!
                            .merge(TextStyle(color: Colors.white))),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
