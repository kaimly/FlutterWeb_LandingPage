import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

import 'package:responsive_builder/responsive_builder.dart';
import 'package:robigo/screens/OrdersScreen/orderScreen.dart';
import 'package:robigo/themes/theme.dart';

import '../../widgets/allWIdgets.dart';

import 'widgets/categoryWise.dart';
import 'widgets/customSwitch.dart';
import 'widgets/customappBar.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/homeScreen";
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
        desktop: (ctx) => Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(70),
                child: NewGradientAppBar(
                  // centerTitle: true,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 8),
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6)),
                            child: Image.asset(
                              "assets/images/pro.png",
                              scale: 2,
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
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
                      const SizedBox(
                        width: 350,
                      ),
                      Container(
                        width: 250,
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
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.5)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/images/orders.png",
                              scale: 2,
                            ),
                            Text(
                              "Orders",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.merge(TextStyle(fontSize: 10)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

                  gradient: LinearGradient(
                      colors: [linearGradient1, linearGradient2],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft),
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      // color: Colors.red,
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CustomListIteem(isDesktop: true),
                          CustomListIteem(isDesktop: true),
                          CustomListIteem(isDesktop: true),
                          CustomListIteem(isDesktop: true),
                          CustomListIteem(isDesktop: true),
                          CustomListIteem(isDesktop: true),
                          CustomListIteem(isDesktop: true),
                        ],
                      ),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //?one item in desktop row
                        Expanded(
                            flex: 3,
                            child: Row(
                              children: [
                                Expanded(flex: 2, child: SizedBox()),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Menu",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      CustomSideBarItem(),
                                      CustomSideBarItem(),
                                      CustomSideBarItem(),
                                      CustomSideBarItem(),
                                      CustomSideBarItem(),
                                      CustomSideBarItem(),
                                      CustomSideBarItem(),
                                      CustomSideBarItem(),
                                    ],
                                  ),
                                )
                              ],
                            )),
                        //? second item
                        Expanded(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Veg",
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .bodyText1,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    CustomflutterSwitch(),
                                  ],
                                ),
                                CategoryWise(
                                  isPlatformMobile: false,
                                  categoryName: "Spicy",
                                ),
                                CategoryWise(
                                  isPlatformMobile: false,
                                  categoryName: "Continental",
                                ),
                              ],
                            )),
                        //?3rd one
                        Expanded(
                            flex: 2,
                            child: Column(
                              children: [],
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
        mobile: (ctx) => MobileHome());
  }
}

class CustomSideBarItem extends StatelessWidget {
  const CustomSideBarItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: Text("Continental", style: Theme.of(context).textTheme.bodyText1!),
    );
  }
}

class MobileHome extends StatelessWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    CustomListIteem(
                      isDesktop: false,
                    ),
                    CustomListIteem(
                      isDesktop: false,
                    ),
                    CustomListIteem(
                      isDesktop: false,
                    ),
                  ],
                ),
              ),
              ChipsOptions(
                onTap: (e) {
                  print("object");
                },
                // defaultPadding:
                //     EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                defaultSelected: 3,
                values: [
                  "All",
                  "Spicy",
                  "Continental",
                  "Arabian Food",
                  "North Indian"
                ],
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
}

class CustomListIteem extends StatelessWidget {
  final bool isDesktop;
  CustomListIteem({required this.isDesktop});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isDesktop ? 300 : MediaQuery.of(context).size.width - 120,
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
