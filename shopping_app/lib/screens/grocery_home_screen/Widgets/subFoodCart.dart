import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app/constants/colors.dart';
import 'package:shopping_app/screens/fav_product_screen/fav_product_screen.dart';

List<SubFoodCard> subFoodCardList = const [
  SubFoodCard(
      itemImage: "lib/assets/images/fish.svg",
      itemTitle: "Fish",
      itemPrice: "6\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/Fruits.svg",
      itemTitle: "Fresh Fruits",
      itemPrice: "9\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/veg.svg",
      itemTitle: "Green Vegitables",
      itemPrice: "3\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/meat.svg",
      itemTitle: "Fresh Meat",
      itemPrice: "6\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/fish.svg",
      itemTitle: "Fish",
      itemPrice: "6\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/Fruits.svg",
      itemTitle: "Fresh Fruits",
      itemPrice: "9\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/veg.svg",
      itemTitle: "Green Vegitables",
      itemPrice: "3\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/meat.svg",
      itemTitle: "Fresh Meat",
      itemPrice: "6\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/fish.svg",
      itemTitle: "Fish",
      itemPrice: "6\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/Fruits.svg",
      itemTitle: "Fresh Fruits",
      itemPrice: "9\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/veg.svg",
      itemTitle: "Green Vegitables",
      itemPrice: "3\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/meat.svg",
      itemTitle: "Fresh Meat",
      itemPrice: "6\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/fish.svg",
      itemTitle: "Fish",
      itemPrice: "6\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/Fruits.svg",
      itemTitle: "Fresh Fruits",
      itemPrice: "9\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/veg.svg",
      itemTitle: "Green Vegitables",
      itemPrice: "3\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/meat.svg",
      itemTitle: "Fresh Meat",
      itemPrice: "6\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/fish.svg",
      itemTitle: "Fish",
      itemPrice: "6\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/Fruits.svg",
      itemTitle: "Fresh Fruits",
      itemPrice: "9\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/veg.svg",
      itemTitle: "Green Vegitables",
      itemPrice: "3\$"),
  SubFoodCard(
      itemImage: "lib/assets/images/meat.svg",
      itemTitle: "Fresh Meat",
      itemPrice: "6\$"),
];

class SubFoodCard extends StatefulWidget {
  final String itemImage;
  final String itemTitle;
  final String itemPrice;

  const SubFoodCard({
    Key? key,
    required this.itemImage,
    required this.itemTitle,
    required this.itemPrice,
  }) : super(key: key);

  @override
  State<SubFoodCard> createState() => _SubFoodCardState();
}

class _SubFoodCardState extends State<SubFoodCard> {
  bool isFavPressed = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: 230,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: MyColors.greyColor,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    child: SvgPicture.asset(
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
                          color: Colors.black,
                        ),
                      ),
                      const Text(
                        "Organic",
                        style: TextStyle(
                          fontFamily: "Manrope",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: MyColors.greyLighColor,
                        ),
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
                                color: MyColors.darkYellowColor,
                              ),
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
                                color: Colors.black,
                              ),
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
            Positioned(
              top: 5, // Adjust the top position as needed
              left: 5, // Adjust the left position as needed
              child: IconButton(
                onPressed: () {
                  // Handle favorite button press
                  setState(() {
                    isFavPressed = !isFavPressed;
                    if (isFavPressed) {
                      // Add the item to the favorite list
                      favProductsCardList.add(widget);
                    } else {
                      // Remove the item from the favorite list
                      favProductsCardList.remove(widget);
                    }
                  });
                },
                icon: Icon(
                  isFavPressed ? Icons.favorite_border : Icons.favorite,
                  color: MyColors.darkBlueColor,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 13,
        )
      ],
    );
  }
}
