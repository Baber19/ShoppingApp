import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/constants/colors.dart';

List<SubFoodCard2> subFoodCard2List = const [
  SubFoodCard2(
      itemImage: "lib/assets/images/fruits.svg",
      itemTitle: "\$325",
      itemPrice: "Orange Package 1",
      itemQuantity: "1 Bundle"),
  SubFoodCard2(
      itemImage: "lib/assets/images/fish.svg",
      itemTitle: "\$215",
      itemPrice: "Orange Package 1",
      itemQuantity: "1 Bundle"),
  SubFoodCard2(
      itemImage: "lib/assets/images/meat.svg",
      itemTitle: "\$195",
      itemPrice: "Orange Package 1",
      itemQuantity: "1 Bundle"),
  SubFoodCard2(
      itemImage: "lib/assets/images/veg.svg",
      itemTitle: "\$241",
      itemPrice: "Orange Package 1",
      itemQuantity: "1 Bundle"),
  SubFoodCard2(
      itemImage: "lib/assets/images/fish.svg",
      itemTitle: "\$325",
      itemPrice: "Orange Package 1",
      itemQuantity: "1 Bundle"),
  SubFoodCard2(
      itemImage: "lib/assets/images/meat.svg",
      itemTitle: "\$325",
      itemPrice: "Orange Package 1",
      itemQuantity: "1 Bundle"),
];

class SubFoodCard2 extends StatefulWidget {
  final String itemImage;
  final String itemTitle;
  final String itemPrice;
  final String itemQuantity;

  const SubFoodCard2({
    Key? key, // Use 'Key?' here
    required this.itemImage,
    required this.itemTitle,
    required this.itemPrice,
    required this.itemQuantity,
  }) : super(key: key); // Make sure to pass 'key' to super constructor

  @override
  State<SubFoodCard2> createState() => _SubFoodCardState2();
}

class _SubFoodCardState2 extends State<SubFoodCard2> {
  bool isFavPressed = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(children: [
          Container(
            height: 220,
            width: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: MyColors.greyColor),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: SvgPicture.asset(
                    widget.itemImage,
                    height: 85,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
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
                    Text(
                      widget.itemTitle,
                      style: const TextStyle(
                          fontFamily: "Manrope",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.itemQuantity,
                      style: const TextStyle(
                          fontFamily: "Manrope",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 5, // Adjust the top position as needed
            left: 17, // Adjust the left position as needed
            child: IconButton(
              onPressed: () {
                // Handle favorite button press
                setState(() {
                  isFavPressed = !isFavPressed;
                });
              },
              icon: Icon(
                isFavPressed ? Icons.favorite_border : Icons.favorite,
                color: MyColors.darkBlueColor,
              ),
            ),
          ),
        ]),
        const SizedBox(
          width: 13,
        )
      ],
    );
  }
}
