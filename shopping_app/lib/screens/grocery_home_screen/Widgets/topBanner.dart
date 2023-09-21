import 'package:flutter/material.dart';
import 'package:shopping_app/Data/productsData.dart';
import 'package:badges/badges.dart' as prefix;

import 'package:shopping_app/screens/add_to_cart_screen/add_to_cart_screen.dart';

import '../../../constants/colors.dart';

class TopBanner extends StatefulWidget {
  const TopBanner({super.key});

  @override
  State<TopBanner> createState() => _TopBannerState();
}

class _TopBannerState extends State<TopBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(42, 75, 160, 1),
      height: MediaQuery.sizeOf(context).height * 0.32,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hey, Baber",
                  style: TextStyle(
                      fontSize: 22, color: Colors.white, fontFamily: "Manrope"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddToCartScreen()),
                    );
                  },
                  child: const Badge(
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: MyColors.darkBlueColor,
                prefixIcon: Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                hintText: "Search Prodcuts or Store",
                hintStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontFamily: "Manrope"),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(28),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "DELIVERY TO",
                  style: TextStyle(
                      fontSize: 11,
                      fontFamily: "Manrope",
                      color: MyColors.greyColor,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  "WITHIN",
                  style: TextStyle(
                      fontSize: 11,
                      fontFamily: "Manrope",
                      color: MyColors.greyColor,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Green Way 3000, Sylhet",
                      style: TextStyle(
                          fontFamily: "Manrope",
                          fontSize: 14,
                          color: MyColors.greyLighColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: MyColors.greyColor,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "1 HOUR",
                      style: TextStyle(
                          fontFamily: "Manrope",
                          fontSize: 14,
                          color: MyColors.greyLighColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: MyColors.greyColor,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
