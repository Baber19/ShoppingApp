import 'package:flutter/material.dart';

import 'package:shopping_app/screens/product_screen/Widgets/productFoodCard.dart';
import 'package:shopping_app/screens/product_screen/Widgets/productTopBar.dart';

import '../categories_screen_2/Widgets/itemType.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const ProductTopBar(),
          const SizedBox(
            height: 10,
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
          const SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 13,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 1, mainAxisSpacing: 10),
              itemCount: ProductFoodCardList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ProductFoodCardList[index],
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
