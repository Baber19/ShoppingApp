import 'package:flutter/material.dart';
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
              child: Image.asset(
                "lib/assets/images/green_tea.jpg",
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
                        topRight: Radius.circular(30))),
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
                        "Thin Choise Top\nOranges",
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: "Manrope",
                            fontWeight: FontWeight.w800),
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
                                color: MyColors.blueColor),
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
                                color: MyColors.darkBlueColor),
                          ),
                          Spacer(),
                          Text(
                            "Reg : \$56.70 USD",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Manrope",
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 138, 146, 161)),
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
                      const Row(
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
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: MyColors.headingGreyColors,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(
                        indent: 10,
                        thickness: 2,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Riviews",
                            style: TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: MyColors.headingGreyColors,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: MyColors.headingGreyColors,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AddToCartScreen()),
                                );
                              },
                              child: const WhiteButton(
                                  height: 65,
                                  width: 170,
                                  buttonText: "Add To Cart"),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AddToCartScreen()),
                                );
                              },
                              child: const BlueButton(
                                  height: 65,
                                  width: 170,
                                  buttonText: "Buy Now"),
                            ),
                          ])
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
