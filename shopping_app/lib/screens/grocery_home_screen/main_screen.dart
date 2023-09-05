// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:shopping_app/screens/grocery_home_screen/Widgets/discountCard.dart';
import 'package:shopping_app/screens/grocery_home_screen/Widgets/subFoodCard2.dart';
import 'package:shopping_app/screens/grocery_home_screen/Widgets/subFoodCart.dart';
import 'package:shopping_app/screens/grocery_home_screen/Widgets/topBanner.dart';
import 'package:shopping_app/widgets/bottomNavBar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TopBanner(),
          Expanded(
            // flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ListView(
                children: [
                  // const SizedBox(height: 5),
                  // Horizontal scrollable section 1 (discountFoodCardList)
                  Container(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: discountFoodCardList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return discountFoodCardList[index];
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Recommended",
                    style: TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Horizontal scrollable section 2 (subFoodCardList)
                  Container(
                    height: 200, // Set the desired height
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: subFoodCardList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return subFoodCardList[index];
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Deals On Fruits And Tea",
                    style: TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Vertical scrollable section (subFoodCard2List)
                  Container(
                    height: 220, // Set the desired height
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: subFoodCard2List.length,
                      itemBuilder: (BuildContext context, int index) {
                        return subFoodCard2List[index];
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  // const NavBar()
                ],
              ),
            ),
          ),
          const NavBar()
        ],
      ),
    );
  }
}
