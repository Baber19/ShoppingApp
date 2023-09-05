import 'package:flutter/material.dart';

class ProductDetailsScreenTopBar extends StatefulWidget {
  const ProductDetailsScreenTopBar({super.key});

  @override
  State<ProductDetailsScreenTopBar> createState() =>
      _ProductDetailsScreenTopBarState();
}

class _ProductDetailsScreenTopBarState
    extends State<ProductDetailsScreenTopBar> {
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
          color: Color.fromARGB(255, 124, 131, 145),
          size: 18,
        ),
        SizedBox(
          width: 40,
        ),
        Text(
          "Oranges",
          style: TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 124, 131, 145),
              fontFamily: "Manrope"),
        ),
        Spacer(),
        SizedBox(
          width: 30,
        ),
        Icon(
          Icons.shopping_cart,
          color: Color.fromARGB(255, 124, 131, 145),
          size: 24,
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
