import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/constants/colors.dart';
import 'package:shopping_app/screens/categories_screen_2/categories_screen_2.dart';

List<CategoryScreenFoodCard> categoryScreenFoodCardList = [
  CategoryScreenFoodCard(
    itemImage: "lib/assets/images/fish.svg",
    itemTitle: "Fishes",
    itemType: "From Sea",
  ),
  CategoryScreenFoodCard(
    itemImage: "lib/assets/images/meat.svg",
    itemTitle: "Meat",
    itemType: "Organic",
  ),
  CategoryScreenFoodCard(
    itemImage: "lib/assets/images/veg.svg",
    itemTitle: "Vegitables",
    itemType: "From Sea",
  ),
  CategoryScreenFoodCard(
    itemImage: "lib/assets/images/fruits.svg",
    itemTitle: "Fruits",
    itemType: "Organic",
  ),
  CategoryScreenFoodCard(
    itemImage: "lib/assets/images/fish.svg",
    itemTitle: "Fishes",
    itemType: "From Sea",
  ),
  CategoryScreenFoodCard(
    itemImage: "lib/assets/images/meat.svg",
    itemTitle: "Meat",
    itemType: "Organic",
  ),
  CategoryScreenFoodCard(
    itemImage: "lib/assets/images/veg.svg",
    itemTitle: "Fishes",
    itemType: "From Sea",
  ),
  CategoryScreenFoodCard(
    itemImage: "lib/assets/images/fruits.svg",
    itemTitle: "Meat",
    itemType: "Organic",
  ),
];

class CategoryScreenFoodCard extends StatelessWidget {
  final String itemImage;
  final String itemTitle;
  final String itemType;

  const CategoryScreenFoodCard({
    required this.itemImage,
    required this.itemTitle,
    required this.itemType,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => const CategoriesScreen2()),
          ),
        );
      },
      child: Container(
        height: 210,
        width: 155,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), color: MyColors.greyColor),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SvgPicture.asset(
                itemImage,
                height: 75,
                width: 95,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2.0,
              indent: 30,
              endIndent: 30,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              itemTitle,
              style: const TextStyle(
                  fontFamily: "Manrope",
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              itemType,
              style: const TextStyle(
                  fontFamily: "Manrope",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
