import 'package:flutter/material.dart';

List<ItemType> ItemTypeList = const [
  ItemType(
    itemTypeName: "Meat and Fishes",
    itemTypeColor: Color(0xffF9B023),
    textColor: Colors.white,
  ),
  ItemType(
      itemTypeName: "Vegitables",
      itemTypeColor: Colors.white,
      textColor: Colors.grey),
  ItemType(
      itemTypeName: "Fruits",
      itemTypeColor: Colors.white,
      textColor: Colors.grey),
  ItemType(
      itemTypeName: "Pickels",
      itemTypeColor: Colors.white,
      textColor: Colors.grey)
];

class ItemType extends StatefulWidget {
  final String itemTypeName;
  final Color itemTypeColor;
  final Color textColor;
  const ItemType({
    super.key,
    required this.itemTypeName,
    required this.itemTypeColor,
    required this.textColor,
  });

  @override
  State<ItemType> createState() => _ItemTypeState();
}

class _ItemTypeState extends State<ItemType> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 45,
            width: 170,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.circular(20),
              color: widget.itemTypeColor,
            ),
            child: Center(
              child: Text(
                widget.itemTypeName,
                style: TextStyle(
                    color: widget.textColor,
                    fontFamily: "Manrope",
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
        // const SizedBox(
        //   width: 2,
        // ),
      ],
    );
  }
}
