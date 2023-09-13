import 'package:flutter/material.dart';
import 'package:shopping_app/screens/categories_screen_1/Widgets/categoryScreenFoodCard.dart';

import '../../Data/productsData.dart';
import '../../widgets/bottomNavBar.dart';
import 'Widgets/categoryScreenTopBanner.dart';

class CategoryScreen1 extends StatefulWidget {
  const CategoryScreen1({super.key});

  @override
  State<CategoryScreen1> createState() => _CategoryScreen1State();
}

class _CategoryScreen1State extends State<CategoryScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Column(
          children: [
            const SizedBox(
              width: 30,
            ),
            const CategoryScreen1TopBanner(),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: CatScreen1FoodCardList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CategoryScreenFoodCard(
                      itemImage: CatScreen1FoodCardList[index]["itemImage"],
                      itemTitle: CatScreen1FoodCardList[index]["itemTitle"],
                      itemType: CatScreen1FoodCardList[index]["itemType"],
                    );
                  },
                ),
              ),
            ),
            BottomNavBar()
          ],
        ));
  }
}
