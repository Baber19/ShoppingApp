import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/bottomNavBar.dart';
import 'package:shopping_app/screens/grocery_home_screen/Widgets/subFoodCart.dart';

import 'Widgets/discountCard.dart';
import 'Widgets/subFoodCard2.dart';
import 'Widgets/topBanner.dart';

class GroceryScreen1 extends StatefulWidget {
  const GroceryScreen1({super.key});

  @override
  State<GroceryScreen1> createState() => _GroceryScreen1State();
}

class _GroceryScreen1State extends State<GroceryScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: const [
          TopBanner(),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FoodCard(
                      itemImage: "lib/assets/images/green_tea.jpg",
                      text1: "Get",
                      text2: "50% OFF",
                      text3: "On First 3 Orders"),
                  SizedBox(
                    width: 10,
                  ),
                  FoodCard(
                      itemImage: "lib/assets/images/green_tea.jpg",
                      text1: "Get",
                      text2: "Your Orders",
                      text3: "On Time"),
                  SizedBox(
                    width: 10,
                  ),
                  FoodCard(
                      itemImage: "lib/assets/images/green_tea.jpg",
                      text1: "Free",
                      text2: "Delivery",
                      text3: "On Above 250\$"),
                  SizedBox(
                    width: 10,
                  ),
                  FoodCard(
                      itemImage: "lib/assets/images/green_tea.jpg",
                      text1: "Get",
                      text2: "Amazing",
                      text3: "Deals On Weekends"),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            "Recommended                          ",
            style: TextStyle(
                fontFamily: "Manrope",
                fontSize: 30,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SubFoodCard(
                          itemImage: "lib/assets/images/lemon.png",
                          itemTitle: "Fresh Lemon",
                          itemPrice: "12\$"),
                      SizedBox(
                        width: 10,
                      ),
                      SubFoodCard(
                          itemImage: "lib/assets/images/green_tea.jpg",
                          itemTitle: "Green Tea",
                          itemPrice: "6\$"),
                      SizedBox(
                        width: 10,
                      ),
                      SubFoodCard(
                          itemImage: "lib/assets/images/lemon.png",
                          itemTitle: "Fresh Lemon",
                          itemPrice: "12\$"),
                      SizedBox(
                        width: 10,
                      ),
                      SubFoodCard(
                          itemImage: "lib/assets/images/green_tea.jpg",
                          itemTitle: "Green Tea",
                          itemPrice: "7\$"),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Deals On Fruits And Tea                                     ",
            style: TextStyle(
                fontFamily: "Manrope",
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SubFoodCard2(
                    itemImage: "lib/assets/images/green_tea.jpg",
                    itemPrice: "\$325",
                    itemTitle: "Orange Package 1 | ",
                    itemQuantity: "1 Bundle",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SubFoodCard2(
                    itemImage: "lib/assets/images/green_tea.jpg",
                    itemPrice: "\$325",
                    itemTitle: "Orange Package 1 | ",
                    itemQuantity: "1 Bundle",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SubFoodCard2(
                    itemImage: "lib/assets/images/green_tea.jpg",
                    itemPrice: "\$325",
                    itemTitle: "Orange Package 1 | ",
                    itemQuantity: "1 Bundle",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SubFoodCard2(
                    itemImage: "lib/assets/images/green_tea.jpg",
                    itemPrice: "\$325",
                    itemTitle: "Orange Package 1 | ",
                    itemQuantity: "1 Bundle",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SubFoodCard2(
                    itemImage: "lib/assets/images/green_tea.jpg",
                    itemPrice: "\$325",
                    itemTitle: "Orange Package 1 | ",
                    itemQuantity: "1 Bundle",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SubFoodCard2(
                    itemImage: "lib/assets/images/green_tea.jpg",
                    itemPrice: "\$325",
                    itemTitle: "Orange Package 1 | ",
                    itemQuantity: "1 Bundle",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SubFoodCard2(
                    itemImage: "lib/assets/images/green_tea.jpg",
                    itemPrice: "\$325",
                    itemTitle: "Orange Package 1 | ",
                    itemQuantity: "1 Bundle",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SubFoodCard2(
                    itemImage: "lib/assets/images/green_tea.jpg",
                    itemPrice: "\$325",
                    itemTitle: "Orange Package 1 | ",
                    itemQuantity: "1 Bundle",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          NavBar(),
        ],
      ),
    );
  }
}
