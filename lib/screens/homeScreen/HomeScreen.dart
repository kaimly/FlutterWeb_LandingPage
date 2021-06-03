import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:robigo/themes/theme.dart';
import 'package:robigo/widgets/customTextFormField.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (ctx) => SizedBox(),
      mobile: (ctx) => Scaffold(
        appBar: customAppBar(context),
        body: SafeArea(
            child: SingleChildScrollView(
          // padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomTextFormField(hintText: "Search"),
              )
            ],
          ),
        )),
      ),
    );
  }

  PreferredSizeWidget customAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
        backgroundColor: black,
        leadingWidth: 66,
        leading: Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Theme.of(context).accentColor,
            child: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dope Foooodie",
              style: Theme.of(context).accentTextTheme.headline6,
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 12,
                ),
                Text(
                  "Kochi,Kerala",
                  style: Theme.of(context).accentTextTheme.bodyText1,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
