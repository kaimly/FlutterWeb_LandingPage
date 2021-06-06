import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';
import 'package:robigo/screens/OrdersScreen/orderScreen.dart';

import '../../widgets/allWIdgets.dart';

import 'widgets/categoryWise.dart';
import 'widgets/customSwitch.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/homeScreen";
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (ctx) => SizedBox(),
      mobile: (ctx) => Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, OrderScreen.routName);
          },
        ),
        bottomNavigationBar: CustomBtmNavbarHomePage(),
        appBar: customAppBar(context),
        body: SafeArea(
            child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  right: 12,
                ),
                child: CustomTextFormField(
                  hintText: "Search",
                  isSearchIcon: true,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                // color: Colors.red,
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomListIteem(),
                    CustomListIteem(),
                    CustomListIteem(),
                  ],
                ),
              ),
              ChipsOptions(
                onTap: (e) {
                  print("object");
                },
                defaultPadding: EdgeInsets.all(0),
                defaultSelected: 3,
                values: ["All", "Spicy", "Continental", "Arabian Food"],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 12, bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Veg",
                        style: Theme.of(context).primaryTextTheme.bodyText1,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CustomflutterSwitch(),
                    ],
                  )),
              CategoryWise(
                categoryName: "Spicy",
              ),
              CategoryWise(
                categoryName: "Continental",
              ),
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
        backgroundColor: Theme.of(context).accentColor,
        leadingWidth: 66,
        leading: Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(6)),
            child: Icon(
              Icons.home,
              color: Colors.black,
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Calicut notebook",
              style: Theme.of(context).textTheme.headline6,
            ),
            // const SizedBox(
            //   height: 4,
            // ),
            Text(
              "Kochi,Kerala",
              style: Theme.of(context).primaryTextTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListIteem extends StatelessWidget {
  const CustomListIteem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 120,
      margin: const EdgeInsets.only(right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          "assets/images/sample1.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
