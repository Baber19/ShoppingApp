import 'package:flutter/material.dart';
import 'package:shopping_app/Data/productsData.dart';

import 'Widgets/categoriesScreen2FoodCard.dart';
import 'Widgets/itemType.dart';
import 'Widgets/topbanner.dart';

class CategoriesScreen2 extends StatefulWidget {
  const CategoriesScreen2({super.key});

  @override
  State<CategoriesScreen2> createState() => _CategoriesScreen2State();
}

class _CategoriesScreen2State extends State<CategoriesScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          const CategoryScreen2TopBanner(),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ItemTypeList.length,
              itemBuilder: (BuildContext context, int index) {
                return ItemTypeList[index];
              },
            ),
          ),
          Expanded(
            flex: 10,
            child: ListView.builder(
              itemCount: categoryScreen2FoodCardList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: CategoryScreen2FoodCard(
                        itemType: categoryScreen2FoodCardList[index]
                            ["itemType"],
                        itemImage: categoryScreen2FoodCardList[index]
                            ["itemImage"],
                        itemPrice: categoryScreen2FoodCardList[index]
                            ["itemPrice"],
                        itemTitle: categoryScreen2FoodCardList[index]
                            ["itemTitle"],
                        containerColor: categoryScreen2FoodCardList[index]
                            ["containerColor"]));
              },
            ),
          ),
          // const BottomNavBar()
        ],
      ),
    );
  }
}
