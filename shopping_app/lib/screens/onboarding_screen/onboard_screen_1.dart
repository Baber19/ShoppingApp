// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/constants/colors.dart';
import 'package:shopping_app/screens/grocery_home_screen/main_screen.dart';
import 'package:shopping_app/widgets/Buttons/white_button.dart';

class OnBoardScreen1 extends StatefulWidget {
  const OnBoardScreen1({super.key});

  @override
  State<OnBoardScreen1> createState() => _OnBoardScreen1State();
}

class _OnBoardScreen1State extends State<OnBoardScreen1> {
  List<String> images = [
    "lib/assets/images/onBoardImage1.svg",
    "lib/assets/images/onBoardImage1.svg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.darkBlueColor,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const SizedBox(
                height: 90,
              ),
              const Text(
                "Your holiday\nshopping\ndelivered to Screen\none",
                style: TextStyle(
                    fontSize: 32,
                    fontFamily: "Manrope",
                    fontWeight: FontWeight.w700,
                    color: MyColors.onBoardText1),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "There's something for everyone\nto enjoy with Sweet Shop\nFavourites Screen 1",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Manrope",
                    fontWeight: FontWeight.w500,
                    color: MyColors.onBoardText2),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              // PageView.builder(
              //   itemBuilder: (context, index) {
              //     return Container(
              //       height: 150,
              //       width: 150,
              //       child: Center(child: SvgPicture.asset(images[index])),
              //     );
              //   },
              //   itemCount: images.length,
              //   scrollDirection: Axis.horizontal,
              //   physics: const PageScrollPhysics(),
              // ),
              SizedBox(
                height: 380,
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainScreen(),
                    ),
                  );
                },
                child: const WhiteButton(
                  height: 80,
                  width: 270,
                  buttonText: "Get Started",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
