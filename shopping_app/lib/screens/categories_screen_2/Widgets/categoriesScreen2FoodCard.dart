import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/constants/colors.dart';

import '../../product_screen/product_screen.dart';

class CategoryScreen2FoodCard extends StatefulWidget {
  final String itemImage;
  final String itemTitle;
  final String itemType;
  final String itemPrice;
  final Color containerColor;

  const CategoryScreen2FoodCard(
      {super.key,
      required this.itemImage,
      required this.itemTitle,
      required this.itemType,
      required this.itemPrice,
      required this.containerColor});

  @override
  State<CategoryScreen2FoodCard> createState() =>
      _CategoryScreen2FoodCardState();
}

class _CategoryScreen2FoodCardState extends State<CategoryScreen2FoodCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductsScreen()),
        );
      },
      child: Row(
        children: [
          Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
                color: widget.containerColor,
                borderRadius: BorderRadius.circular(13)),
            child: Center(
              child: SvgPicture.asset(
                widget.itemImage,
                width: 100,
                height: 100,
              ),
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.itemTitle,
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Manrope"),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.itemType,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Manrope",
                  color: Color.fromARGB(255, 84, 88, 96),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Starting From",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Manrope",
                  color: Color.fromARGB(255, 60, 63, 70),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                widget.itemPrice,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  fontFamily: "Manrope",
                  color: MyColors.blueColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
