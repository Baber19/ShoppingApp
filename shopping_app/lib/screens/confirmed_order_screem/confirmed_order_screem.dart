import 'package:flutter/material.dart';
import 'package:shopping_app/constants/colors.dart';
import 'package:shopping_app/screens/grocery_home_screen/main_screen.dart';
import 'package:shopping_app/widgets/Buttons/white_button.dart';

class ConfirmedOrderScreen extends StatelessWidget {
  const ConfirmedOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: MyColors.darkBlueColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "Congratulations",
                style: TextStyle(
                    fontSize: 45, color: Colors.white, fontFamily: "Manrope"),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Your Order Has\nBeen Confirmed",
                style: TextStyle(
                    fontSize: 55,
                    color: Colors.white,
                    fontFamily: "Manrope",
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 70,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainScreen()),
                    );
                  },
                  child: WhiteButton(
                      height: 70, width: 320, buttonText: "Go to Home Screen"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
