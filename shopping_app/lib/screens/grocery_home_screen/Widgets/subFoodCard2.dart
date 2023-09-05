import 'package:flutter/material.dart';
import 'package:shopping_app/constants/colors.dart';

List<SubFoodCard2> subFoodCard2List = const [
  SubFoodCard2(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemTitle: "\$325",
      itemPrice: "Orange Package 1 | ",
      itemQuantity: "1 Bundle"),
  SubFoodCard2(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemTitle: "\$325",
      itemPrice: "Orange Package 1 | ",
      itemQuantity: "1 Bundle"),
  SubFoodCard2(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemTitle: "\$325",
      itemPrice: "Orange Package 1 | ",
      itemQuantity: "1 Bundle"),
  SubFoodCard2(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemTitle: "\$325",
      itemPrice: "Orange Package 1 | ",
      itemQuantity: "1 Bundle"),
  SubFoodCard2(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemTitle: "\$325",
      itemPrice: "Orange Package 1 | ",
      itemQuantity: "1 Bundle"),
  SubFoodCard2(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemTitle: "\$325",
      itemPrice: "Orange Package 1 | ",
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
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
        const SizedBox(
          width: 13,
        )
      ],
    );
  }
}
