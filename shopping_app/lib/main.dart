import 'package:flutter/material.dart';
import 'package:shopping_app/screens/add_new_card_screen/add_new_card_screen.dart';
import 'package:shopping_app/screens/categories_screen_1/category_screen_1.dart';
import 'package:shopping_app/screens/grocery_home_screen/main_screen.dart';

import 'screens/onboarding_screen/onboard_screen_1.dart';
import 'screens/orders_screen/orders.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
