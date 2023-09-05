import 'package:flutter/material.dart';

class ProductTopBar extends StatefulWidget {
  const ProductTopBar({super.key});

  @override
  State<ProductTopBar> createState() => _ProductTopBarState();
}

class _ProductTopBarState extends State<ProductTopBar> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          height: 50,
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Color.fromARGB(255, 30, 34, 43),
          size: 18,
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
