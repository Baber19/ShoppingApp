import 'package:flutter/material.dart';
import 'package:shopping_app/constants/colors.dart';
import 'package:shopping_app/screens/categories_screen_2/categories_screen_2.dart';

List<CategoryScreenFoodCard> categoryScreenFoodCardList = const [
  CategoryScreenFoodCard(
    itemImage: "lib/assets/images/green_tea.jpg",
    itemTitle: "Fish",
    itemType: "From Sea",
  ),
  CategoryScreenFoodCard(
    itemImage: "lib/assets/images/green_tea.jpg",
    itemTitle: "Fish",
    itemType: "From Sea",
  ),
  CategoryScreenFoodCard(
    itemImage: "lib/assets/images/green_tea.jpg",
    itemTitle: "Fish",
    itemType: "From Sea",
  ),
  CategoryScreenFoodCard(
    itemImage: "lib/assets/images/green_tea.jpg",
    itemTitle: "Fish",
    itemType: "From Sea",
  ),
  CategoryScreenFoodCard(
    itemImage: "lib/assets/images/green_tea.jpg",
    itemTitle: "Fish",
    itemType: "From Sea",
  ),
  CategoryScreenFoodCard(
    itemImage: "lib/assets/images/green_tea.jpg",
    itemTitle: "Fish",
    itemType: "From Sea",
  ),
  CategoryScreenFoodCard(
    itemImage: "lib/assets/images/green_tea.jpg",
    itemTitle: "Fish",
    itemType: "From Sea",
  ),
  CategoryScreenFoodCard(
    itemImage: "lib/assets/images/green_tea.jpg",
    itemTitle: "Fish",
    itemType: "From Sea",
  ),
];

class CategoryScreenFoodCard extends StatefulWidget {
  final String itemImage;
  final String itemTitle;
  final String itemType;

  const CategoryScreenFoodCard(
      {Key? key, // Use 'Key?' here
      required this.itemImage,
      required this.itemTitle,
      required this.itemType})
      : super(key: key); // Make sure to pass 'key' to super constructor

  @override
  State<CategoryScreenFoodCard> createState() => _SubFoodCardState2();
}

class _SubFoodCardState2 extends State<CategoryScreenFoodCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CategoriesScreen2()),
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
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                widget.itemImage,
                height: 75,
                width: 75,
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
              widget.itemTitle,
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
              widget.itemType,
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
