import 'package:flutter/material.dart';
import 'package:shopping_app/screens/categories_screen_1/Widgets/categoryScreenFoodCard.dart';

import '../../widgets/bottomNavBar.dart';
import 'Widgets/fav_product_screen_top_banner.dart';

List favProductsCardList = [];

class FavProductsScreen extends StatefulWidget {
  const FavProductsScreen({super.key});

  @override
  State<FavProductsScreen> createState() => _FavProductsScreenState();
}

class _FavProductsScreenState extends State<FavProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Column(
          children: [
            const SizedBox(
              width: 30,
            ),
            const FavProductsScreenTopBanner(),
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
                  itemCount: favProductsCardList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return favProductsCardList[index];
                  },
                ),
              ),
            ),
            const NavBar()
          ],
        ));
  }
}
