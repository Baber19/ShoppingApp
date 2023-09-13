import 'package:flutter/material.dart';

List cartItems = [];

List subFoodCardList = [
  {
    "itemImage": "lib/assets/images/fish.svg",
    "itemTitle": "Fish",
    "itemPrice": "6\$",
    "itemQuantity": "1 Bundle",
    "isFav": false,
  },
  {
    "itemImage": "lib/assets/images/Fruits.svg",
    "itemTitle": "Fresh Fruits",
    "itemPrice": "9\$",
    "itemQuantity": "1 Bundle",
    "isFav": false,
  },
  {
    "itemImage": "lib/assets/images/veg.svg",
    "itemTitle": "Green Vegitables",
    "itemPrice": "3\$",
    "itemQuantity": "1 Bundle",
    "isFav": false,
  },
  {
    "itemImage": "lib/assets/images/meat.svg",
    "itemTitle": "Fresh Meat",
    "itemPrice": "6\$",
    "itemQuantity": "1 Bundle",
    "isFav": false,
  },
  {
    "itemImage": "lib/assets/images/fish.svg",
    "itemTitle": "Fish",
    "itemPrice": "6\$",
    "itemQuantity": "1 Bundle",
    "isFav": false,
  },
  {
    "itemImage": "lib/assets/images/Fruits.svg",
    "itemTitle": "Fresh Fruits",
    "itemPrice": "9\$",
    "itemQuantity": "1 Bundle",
    "isFav": false,
  },
  {
    "itemImage": "lib/assets/images/veg.svg",
    "itemTitle": "Green Vegitables",
    "itemPrice": "3\$",
    "itemQuantity": "1 Bundle",
    "isFav": false,
  },
  {
    "itemImage": "lib/assets/images/meat.svg",
    "itemTitle": "Fresh Meat",
    "itemPrice": "6\$",
    "itemQuantity": "1 Bundle",
    "isFav": false,
  },
  {
    "itemImage": "lib/assets/images/fish.svg",
    "itemTitle": "Fish",
    "itemPrice": "6\$",
    "itemQuantity": "1 Bundle",
    "isFav": false,
  },
  {
    "itemImage": "lib/assets/images/Fruits.svg",
    "itemTitle": "Fresh Fruits",
    "itemPrice": "9\$",
    "itemQuantity": "1 Bundle",
    "isFav": false,
  },
  {
    "itemImage": "lib/assets/images/veg.svg",
    "itemTitle": "Green Vegitables",
    "itemPrice": "3\$",
    "itemQuantity": "1 Bundle",
    "isFav": false,
  },
  {
    "itemImage": "lib/assets/images/meat.svg",
    "itemTitle": "Fresh Meat",
    "itemPrice": "6\$",
    "itemQuantity": "1 Bundle",
    "isFav": false,
  },
  {
    "itemImage": "lib/assets/images/fish.svg",
    "itemTitle": "Fish",
    "itemPrice": "6\$",
    "itemQuantity": "1 Bundle",
    "isFav": false,
  },
];

List subFoodCard2List = [
  {
    "itemImage": "lib/assets/images/fruits.svg",
    "itemPrice": "\$325",
    "itemTitle": "Organic",
    "itemQuantity": "1 Bundle"
  },
  {
    "itemImage": "lib/assets/images/fish.svg",
    "itemPrice": "\$325",
    "itemTitle": "Organic",
    "itemQuantity": "1 Bundle"
  },
  {
    "itemImage": "lib/assets/images/meat.svg",
    "itemPrice": "\$325",
    "itemTitle": "Organic",
    "itemQuantity": "1 Bundle"
  },
  {
    "itemImage": "lib/assets/images/veg.svg",
    "itemPrice": "\$325",
    "itemTitle": "Organic",
    "itemQuantity": "1 Bundle"
  },
  {
    "itemImage": "lib/assets/images/fish.svg",
    "itemPrice": "\$325",
    "itemTitle": "Organic",
    "itemQuantity": "1 Bundle"
  },
  {
    "itemImage": "lib/assets/images/meat.svg",
    "itemPrice": "\$325",
    "itemTitle": "Organic",
    "itemQuantity": "1 Bundle"
  },
  {
    "itemImage": "lib/assets/images/meat.svg",
    "itemPrice": "\$325",
    "itemTitle": "Organic",
    "itemQuantity": "1 Bundle"
  },
  {
    "itemImage": "lib/assets/images/meat.svg",
    "itemPrice": "\$325",
    "itemTitle": "Organic",
    "itemQuantity": "1 Bundle"
  },
];

List categoryScreen2FoodCardList = const [
  {
    "itemImage": "lib/assets/images/fish.svg",
    "itemTitle": "Big & Small Fishes",
    "itemType": "Fresh from Sea",
    "itemPrice": "\$36/KG",
    "containerColor": Color.fromARGB(255, 231, 223, 151),
    "itemQuantity": "1 Bundle"
  },
  {
    "itemImage": "lib/assets/images/fish.svg",
    "itemTitle": "Big & Small Fishes",
    "itemType": "Fresh from Sea",
    "itemPrice": "\$36/KG",
    "containerColor": Color.fromARGB(255, 201, 18, 164),
    "itemQuantity": "1 Bundle"
  },
  {
    "itemImage": "lib/assets/images/fish.svg",
    "itemTitle": "Big & Small Fishes",
    "itemType": "Fresh from Sea",
    "itemPrice": "\$36/KG",
    "containerColor": Color.fromARGB(255, 114, 208, 122),
    "itemQuantity": "1 Bundle"
  },
  {
    "itemImage": "lib/assets/images/fish.svg",
    "itemTitle": "Big & Small Fishes",
    "itemType": "Fresh from Sea",
    "itemPrice": "\$36/KG",
    "containerColor": Color.fromARGB(255, 183, 120, 78),
    "itemQuantity": "1 Bundle"
  },
  {
    "itemImage": "lib/assets/images/fish.svg",
    "itemTitle": "Big & Small Fishes",
    "itemType": "Fresh from Sea",
    "itemPrice": "\$36/KG",
    "containerColor": Color.fromARGB(255, 97, 166, 191),
    "itemQuantity": "1 Bundle"
  },
];
List CatScreen1FoodCardList = [
  {
    "itemImage": "lib/assets/images/fruits.svg",
    "itemTitle": "\$325",
    "itemType": "Organic",
    "itemQuantity": "1 Bundle"
  },
  {
    "itemImage": "lib/assets/images/fish.svg",
    "itemTitle": "\$215",
    "itemType": "Organic",
    "itemQuantity": "1 Bundle"
  },
  {
    "itemImage": "lib/assets/images/meat.svg",
    "itemTitle": "\$195",
    "itemType": "Organic",
    "itemQuantity": "1 Bundle"
  },
  {
    "itemImage": "lib/assets/images/veg.svg",
    "itemTitle": "\$241",
    "itemType": "Organic",
    "itemQuantity": "1 Bundle"
  },
  {
    "itemImage": "lib/assets/images/fish.svg",
    "itemTitle": "\$325",
    "itemType": "Organic",
    "itemQuantity": "1 Bundle"
  },
  {
    "itemImage": "lib/assets/images/meat.svg",
    "itemTitle": "\$325",
    "itemType": "Organic",
    "itemQuantity": "1 Bundle"
  },
];

List favItems = [];
