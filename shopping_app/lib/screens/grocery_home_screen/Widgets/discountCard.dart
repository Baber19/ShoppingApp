import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

List<FoodCard> discountFoodCardList = const [
  FoodCard(
      itemImage: "lib/assets/images/green_tea.jpg",
      text1: "Get",
      text2: "50% off",
      text3: "On First 3 Orders"),
  FoodCard(
      itemImage: "lib/assets/images/green_tea.jpg",
      text1: "Get",
      text2: "Your Orders",
      text3: "On Time"),
  FoodCard(
      itemImage: "lib/assets/images/green_tea.jpg",
      text1: "Free",
      text2: "Delivery",
      text3: "On Above 250\$"),
  FoodCard(
      itemImage: "lib/assets/images/green_tea.jpg",
      text1: "Get",
      text2: "50% off",
      text3: "On First 3 Orders"),
  FoodCard(
      itemImage: "lib/assets/images/green_tea.jpg",
      text1: "Get",
      text2: "50% off",
      text3: "On First 3 Orders"),
];

class FoodCard extends StatefulWidget {
  final String itemImage;
  final String text1;
  final String text2;
  final String text3;

  const FoodCard(
      {super.key,
      required this.itemImage,
      required this.text1,
      required this.text2,
      required this.text3});

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 150,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: MyColors.darkYellowColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    widget.itemImage,
                    width: 80,
                    height: 110,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.text1,
                      style: const TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 20,
                          color: MyColors.greyLighColor),
                    ),
                    Text(
                      widget.text2,
                      style: const TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: MyColors.greyLighColor),
                    ),
                    Text(
                      widget.text3,
                      style: const TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 17,
                          color: MyColors.greyLighColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 13,
        ),
      ],
    );
  }
}
