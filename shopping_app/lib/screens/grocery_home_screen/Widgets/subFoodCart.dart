import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app/Data/productsData.dart';
import 'package:shopping_app/constants/colors.dart';

class SubFoodCard extends StatefulWidget {
  final String itemImage;
  final String itemTitle;
  final String itemPrice;
  final int index;

  const SubFoodCard({
    Key? key,
    required this.itemImage,
    required this.itemTitle,
    required this.itemPrice,
    required this.index,
  }) : super(key: key);

  @override
  State<SubFoodCard> createState() => _SubFoodCardState();
}

class _SubFoodCardState extends State<SubFoodCard> {
  bool isFavPressed = true;
  bool isAdded = true;

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
                            IconButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      isAdded = !isAdded;
                                      cartItems
                                          .add(subFoodCardList[widget.index]);
                                    },
                                  );
                                },
                                icon: Icon(
                                  isAdded
                                      ? Icons.add_circle_outlined
                                      : Icons.done_outline_rounded,
                                  color: MyColors.darkBlueColor,
                                  size: 20,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 5,
              left: 5,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    isFavPressed = !isFavPressed;
                    if (subFoodCardList[widget.index]["isFav"]) {
                      favItems.remove(subFoodCardList[widget.index]);
                      print("Itemremoved");
                    } else {
                      favItems.add(subFoodCardList[widget.index]);
                    }
                  });
                },
                icon: isFavPressed
                    ? const Icon(Icons.favorite_border)
                    : const Icon(Icons.favorite),
                color: MyColors.darkBlueColor,
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
