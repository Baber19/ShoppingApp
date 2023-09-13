import 'package:flutter/material.dart';

class CartFoodCard extends StatefulWidget {
  final String itemImage;
  final String itemTitle;
  final int itemPrice;

  const CartFoodCard(
      {super.key,
      required this.itemImage,
      required this.itemTitle,
      required this.itemPrice});

  @override
  State<CartFoodCard> createState() => _CartFoodCardState();
}

class _CartFoodCardState extends State<CartFoodCard> {
  int? num;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Image.asset(widget.itemImage),
          SizedBox(
            width: 50,
          ),
          Column(
            children: [
              Text(widget.itemTitle),
              Text(widget.itemPrice.toString()),
              SizedBox(
                width: 100,
              ),
              Container(
                height: 80,
                width: 150,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          num = (num! + 1)!;
                        });
                      },
                      icon: Icon(Icons.remove_circle),
                    ),
                    Text(num.toString()),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          num = (num! - 1)!;
                        });
                      },
                      icon: Icon(Icons.add_circle),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
