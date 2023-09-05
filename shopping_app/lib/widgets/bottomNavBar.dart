import 'package:flutter/material.dart';
import 'package:shopping_app/screens/categories_screen_1/category_screen_1.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        const BottomNavigationBarItem(
            icon: Icon(Icons.home_filled), label: "Home"),
        BottomNavigationBarItem(
          icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CategoryScreen1(),
                  ),
                );
              },
              child: const Icon(Icons.list_outlined)),
          label: "Categories",
        ),
        const BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined), label: "Favourite"),
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            label: "more"),
      ],
    );
  }
}
