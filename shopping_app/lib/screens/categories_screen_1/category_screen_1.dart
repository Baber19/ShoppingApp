import 'package:flutter/material.dart';
import 'package:shopping_app/screens/categories_screen_1/Widgets/categoryScreenFoodCard.dart';

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
              width: 30,
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
                  itemCount: categoryScreenFoodCardList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return categoryScreenFoodCardList[index];
                  },
                ),
              ),
            ),
            const NavBar()
          ],
        ));
  }
}
