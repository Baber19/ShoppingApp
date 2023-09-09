import 'package:flutter/material.dart';
import 'package:shopping_app/screens/categories_screen_2/categories_screen_2.dart';

class ProductTopBar extends StatefulWidget {
  const ProductTopBar({super.key});

  @override
  State<ProductTopBar> createState() => _ProductTopBarState();
}

class _ProductTopBarState extends State<ProductTopBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 50,
        ),
        SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CategoriesScreen2()),
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
          ),
        ),
        SizedBox(
          width: 40,
        ),
        Text(
          "Hey, Baber",
          style: TextStyle(fontSize: 22, fontFamily: "Manrope"),
        ),
        Spacer(),
        Icon(
          Icons.search_rounded,
          color: Color.fromARGB(255, 30, 34, 43),
          size: 24,
        ),
        SizedBox(
          width: 30,
        ),
        Icon(
          Icons.shopping_cart,
          color: Color.fromARGB(255, 30, 34, 43),
          size: 24,
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
