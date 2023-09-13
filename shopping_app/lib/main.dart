import 'package:flutter/material.dart';
import 'package:shopping_app/screens/add_new_card_screen/add_new_card_screen.dart';
import 'package:shopping_app/screens/categories_screen_1/category_screen_1.dart';
import 'package:shopping_app/screens/grocery_home_screen/main_screen.dart';
import 'package:shopping_app/screens/onboarding_screen/onboard_screen_1.dart';

import 'screens/categories_screen_2/categories_screen_2.dart';
import 'screens/check_out_screen/check_out_screen.dart';
import 'screens/confirmed_order_screem/confirmed_order_screem.dart';
import 'screens/product_details_screen/product_details_screen.dart';

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
