import 'package:flutter/material.dart';
import 'package:shopping_app/constants/colors.dart';
import 'package:shopping_app/screens/categories_screen_1/category_screen_1.dart';
import 'package:shopping_app/screens/fav_product_screen/fav_product_screen.dart';
import 'package:shopping_app/screens/grocery_home_screen/main_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30,
      onTap: (int newIndex) {
        setState(() {
          _currentIndex = newIndex;
        });
      },
      items: [
        BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainScreen(),
                  ),
                );
              },
              child: const Icon(
                Icons.home,
                color: MyColors.darkYellowColor,
              ),
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryScreen1(),
                  ),
                );
              },
              child: const Icon(
                Icons.list,
                color: MyColors.darkYellowColor,
              ),
            ),
            label: "Categories"),
        BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavProductsScreen(),
                  ),
                );
              },
              child: const Icon(
                Icons.favorite,
                color: MyColors.darkYellowColor,
              ),
            ),
            label: "fav"),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.more_vert,
            color: MyColors.darkYellowColor,
          ),
          label: "More",
        ),
      ],
    );
  }
}
