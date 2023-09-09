import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/screens/grocery_home_screen/main_screen.dart';

import '../../widgets/Buttons/custom_button.dart';
import 'Widgets/topData.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff2A4BA0),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TopData(),
              SvgPicture.asset(
                "lib/assets/images/Imageicon.svg",
                height: 129,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: CustomButtonWidget(
                  buttonText: "Get Started",
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainScreen(),
                          ));
                    });
                  },
                  buttonHeight: 70,
                  buttonWidth: 253,
                  backgroundColor: const Color(0xffFAFBFD),
                  fontColor: Colors.black,
                  iconimage: "lib/assets/images/Arrow.svg",
                ),
              )
            ],
          ),
        ));
  }
}
