import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/widgets/Buttons/blue_button.dart';
import 'package:shopping_app/constants/colors.dart';
import 'package:shopping_app/screens/check_out_screen/check_out_screen.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Container(
              color: MyColors.loghtYellowColor,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.35,
              child: SvgPicture.asset("lib/assets/images/addtocartbanner.svg"),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CheckOutScreen()),
                );
              },
              child: const BlueButton(
                  height: 60,
                  width: double.infinity,
                  buttonText: "Proceed to Checkout"),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
