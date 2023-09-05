import 'package:flutter/material.dart';
import 'package:shopping_app/constants/colors.dart';
import 'package:shopping_app/screens/product_details_screen/product_details_screen.dart';

List<ProductFoodCard> ProductFoodCardList = const [
  ProductFoodCard(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemPrice: "\$325",
      itemType: "Thin Choice Top Oranges"),
  ProductFoodCard(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemPrice: "\$325",
      itemType: "Orange"),
  ProductFoodCard(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemPrice: "\$325",
      itemType: "Orange"),
  ProductFoodCard(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemPrice: "\$325",
      itemType: "Orange"),
  ProductFoodCard(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemPrice: "\$325",
      itemType: "Orange"),
  ProductFoodCard(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemPrice: "\$325",
      itemType: "Orange"),
  ProductFoodCard(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemPrice: "\$325",
      itemType: "Orange"),
  ProductFoodCard(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemPrice: "\$325",
      itemType: "Orange"),
  ProductFoodCard(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemPrice: "\$325",
      itemType: "Orange"),
  ProductFoodCard(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemPrice: "\$325",
      itemType: "Orange"),
];

class ProductFoodCard extends StatefulWidget {
  final String itemImage;
  final String itemPrice;
  final String itemType;

  const ProductFoodCard({
    Key? key, // Use 'Key?' here
    required this.itemImage,
    required this.itemType,
    required this.itemPrice,
  }) : super(key: key); // Make sure to pass 'key' to super constructor

  @override
  State<ProductFoodCard> createState() => _SubFoodCardState2();
}

class _SubFoodCardState2 extends State<ProductFoodCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProductDetailsScreen(),
          ),
        );
      },
      child: Container(
        height: 200,
        width: 165,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), color: MyColors.greyColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
              height: 20,
            ),
            Text(
              widget.itemPrice,
              style: const TextStyle(
                  fontFamily: "Manrope",
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.itemType,
              style: const TextStyle(
                  fontFamily: "Manrope",
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
