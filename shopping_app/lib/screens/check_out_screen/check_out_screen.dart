import 'package:flutter/material.dart';
import 'package:shopping_app/constants/colors.dart';
import 'package:shopping_app/screens/add_new_card_screen/add_new_card_screen.dart';
import 'package:shopping_app/widgets/Buttons/blue_button.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView(
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Color.fromARGB(255, 30, 34, 43),
                  size: 18,
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Shopping Cart",
                  style: TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: MyColors.headingGreyColors),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            const Text(
              "Delivery Adress",
              style: TextStyle(
                  fontFamily: "Manrope",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: MyColors.headingGreyColors),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
                border: Border.all(
                  color: MyColors.darkYellowColor,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: MyColors.headingGreyColors),
                        ),
                        Icon(
                          Icons.check_circle_outline_outlined,
                          size: 24,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Green Way 3000, Sylhet",
                          style: TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "               Edit",
                            style: TextStyle(
                                fontFamily: "Manrope",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: MyColors.blueColor),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
                border: Border.all(
                  color: MyColors.darkYellowColor,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Office",
                          style: TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: MyColors.headingGreyColors),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "\nMedical road, Halal lab,\nSunamganj",
                          style: TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "               Edit",
                            style: TextStyle(
                                fontFamily: "Manrope",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: MyColors.blueColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.add_circle_outline_outlined,
                  color: MyColors.loghtYellowColor,
                  size: 28,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Add New Adress",
                  style: TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: MyColors.headingGreyColors),
                ),
              ],
            ),
            SizedBox(
              height: 160,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddNewCardScreen()),
                );
              },
              child: const BlueButton(
                  height: 60, width: double.infinity, buttonText: "Add Card"),
            )
          ],
        ),
      ),
    );
  }
}
