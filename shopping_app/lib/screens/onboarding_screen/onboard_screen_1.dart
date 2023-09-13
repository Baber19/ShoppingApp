// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

import 'package:shopping_app/constants/colors.dart';
import 'package:shopping_app/screens/grocery_home_screen/main_screen.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  List<String> screenNo = ["One", "Two"];

  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: screenNo.length,
      itemBuilder: (BuildContext context, int index) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: MyColors.darkBlueColor,
          body: SafeArea(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 0),
                    width: 300,
                    height: 203,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Text(
                          "Your Holiday shopping delivered to Screen ${screenNo[index]}  🏕 ",
                          style: const TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Manrope",
                              color: MyColors.onBoardText1),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 294,
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 22),
                      child: Text(
                        "There's something for everyone to enjoy with Sweet Shop Favourites Screen ${index + 1}",
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Manrope",
                            color: MyColors.onBoardText2),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * .05,
                  ),
                  Container(
                    child: currentpage == 0
                        ? row2()
                        : currentpage == 1
                            ? row1()
                            : const Text("data"),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: SvgPicture.asset(
                        "shopping_app/lib/assets/images/veg.svg"),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Hero(
                      tag: 'onBoarding$index',
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.onBoardText1,
                          fixedSize: const Size(260, 70),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MainScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Get Started →",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Manrope",
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      onPageChanged: (index) {
        setState(() {
          currentpage = index;
        });
      },
    );
  }
}

Widget row1() {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Opacity(
        opacity: 0.23,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          width: 24,
          height: 5,
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        width: 34,
        height: 5,
      ),
    ],
  );
}

Widget row2() {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        width: 34,
        height: 5,
      ),
      const SizedBox(
        width: 10,
      ),
      Opacity(
        opacity: 0.23,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          width: 24,
          height: 5,
        ),
      ),
    ],
  );
}
