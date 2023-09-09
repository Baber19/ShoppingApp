import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/widgets/Buttons/blue_button.dart';
import 'package:shopping_app/constants/colors.dart';
import 'package:shopping_app/screens/add_to_cart_screen/add_to_cart_screen.dart';
import 'package:shopping_app/screens/product_details_screen/Widgets/product_details_screen_topbar.dart';
import 'package:shopping_app/widgets/Buttons/white_button.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool isNutritionVisible = false;
  bool isReviewVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const ProductDetailsScreenTopBar(),
            const SizedBox(
              height: 15,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SvgPicture.asset(
                "lib/assets/images/fruits.svg",
                height: 130,
                width: 130,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: MyColors.greyColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Thin Choice Top\nOranges",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Manrope",
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            "\$34.70\\KG",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Manrope",
                              fontWeight: FontWeight.w800,
                              color: MyColors.blueColor,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "\$22.04 OFF",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Manrope",
                              fontWeight: FontWeight.w500,
                              color: MyColors.darkBlueColor,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Reg : \$56.70 USD",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Manrope",
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 138, 146, 161),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        children: [Text("ok")],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Details",
                        style: TextStyle(
                          fontFamily: "Manrope",
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: MyColors.headingGreyColors,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
                        style: TextStyle(
                          fontFamily: "Manrope",
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: MyColors.textGreyColors,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Nutritional facts",
                            style: TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: MyColors.headingGreyColors,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isNutritionVisible = !isNutritionVisible;
                                isReviewVisible = false;
                              });
                            },
                            child: Icon(
                              isNutritionVisible
                                  ? Icons.keyboard_arrow_up_rounded
                                  : Icons.keyboard_arrow_down_rounded,
                              color: MyColors.headingGreyColors,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      isNutritionVisible
                          ? Expanded(
                              child: SingleChildScrollView(
                                child: Container(
                                  // height: double.infinity,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: MyColors.greyColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Nutrition Details",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Container(),
                      const Divider(
                        indent: 10,
                        thickness: 2,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Reviews",
                            style: TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: MyColors.headingGreyColors,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isReviewVisible = !isReviewVisible;
                                isNutritionVisible = false;
                              });
                            },
                            child: Icon(
                              isReviewVisible
                                  ? Icons.keyboard_arrow_up_rounded
                                  : Icons.keyboard_arrow_down_rounded,
                              color: MyColors.headingGreyColors,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      isReviewVisible
                          ? Expanded(
                              child: SingleChildScrollView(
                                child: Container(
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: MyColors.greyColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Product Reviews",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Container(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AddToCartScreen(),
                                ),
                              );
                            },
                            child: const WhiteButton(
                              height: 65,
                              width: 170,
                              buttonText: "Add To Cart",
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AddToCartScreen(),
                                ),
                              );
                            },
                            child: const BlueButton(
                              height: 65,
                              width: 170,
                              buttonText: "Buy Now",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
