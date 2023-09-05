import 'package:flutter/material.dart';
import 'package:shopping_app/constants/colors.dart';

List<SubFoodCard> subFoodCardList = const [
  SubFoodCard(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemTitle: "Green Tea",
      itemPrice: "6\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemTitle: "Green Tea",
      itemPrice: "6\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemTitle: "Green Tea",
      itemPrice: "6\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemTitle: "Green Tea",
      itemPrice: "6\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/green_tea.jpg",
      itemTitle: "Green Tea",
      itemPrice: "6\$"),
];

class SubFoodCard extends StatefulWidget {
  final String itemImage;
  final String itemTitle;
  final String itemPrice;

  const SubFoodCard({
    Key? key, // Use 'Key?' here
    required this.itemImage,
    required this.itemTitle,
    required this.itemPrice,
  }) : super(key: key); // Make sure to pass 'key' to super constructor

  @override
  State<SubFoodCard> createState() => _SubFoodCardState();
}

class _SubFoodCardState extends State<SubFoodCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 230,
          width: 150,
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
                indent: 20,
                endIndent: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.itemTitle,
                    style: const TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  const Text(
                    "Organic",
                    style: TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: MyColors.greyLighColor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 120,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        const Text(
                          "unit",
                          style: TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: MyColors.darkYellowColor),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          widget.itemPrice,
                          style: const TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.add_circle_outlined,
                          color: MyColors.darkBlueColor,
                          size: 28,
                        ),
                      ],
                    ),
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
