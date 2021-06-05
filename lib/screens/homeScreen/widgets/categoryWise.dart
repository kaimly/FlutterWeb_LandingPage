import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:robigo/screens/homeScreen/widgets/foodItem.dart';

class CategoryWise extends StatelessWidget {
  final String categoryName;

  CategoryWise({required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          Center(
            child: Text(
              categoryName,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          StaggeredGridView.countBuilder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            mainAxisSpacing: 18.0,
            crossAxisSpacing: 18.0,
            crossAxisCount: 2,
            scrollDirection: Axis.vertical,
            itemCount: 4,
            itemBuilder: (ctx, int index) {
              return FoodItem(
                  price: 44,
                  title: "ssfdf",
                  image: "assets/images/sample2.png");
            },
            staggeredTileBuilder: (int index) {
              return new StaggeredTile.fit(1);
            },
          ),
        ],
      ),
    );
  }
}
