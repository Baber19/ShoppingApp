import 'package:flutter/material.dart';
import 'package:shopping_app/Data/productsData.dart';
import 'package:shopping_app/screens/categories_screen_1/Widgets/categoryScreenFoodCard.dart';
import 'package:shopping_app/screens/fav_product_screen/Widgets/fav_product_food_card.dart';

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
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: favItems.isNotEmpty
                    ? GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                        ),
                        itemCount: favItems.length,
                        itemBuilder: (BuildContext context, int index) {
                          return FavProductsFoodCard(
                              index: index,
                              itemImage: favItems[index]["itemImage"],
                              itemTitle: favItems[index]["itemTitle"],
                              itemPrice: favItems[index]["itemPrice"]);
                        },
                      )
                    : Center(
                        child: Text("You dont Have any Favourite Product(s)")),
              ),
            ),
            const BottomNavBar(),
          ],
        ));
  }
}
