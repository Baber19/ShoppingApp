import 'package:flutter/material.dart';
import 'package:shopping_app/screens/add_new_card_screen/Widget/card_text_field.dart';
import 'package:shopping_app/widgets/Buttons/blue_button.dart';

import '../../constants/colors.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
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
                    "Add Card",
                    style: TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: MyColors.headingGreyColors),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                "CARD HOLDER NAME",
                style: const TextStyle(
                    fontFamily: "Manrope",
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: MyColors.headingGreyColors),
              ),
              TextField(
                keyboardType: TextInputType.text,
                style: const TextStyle(
                    color: MyColors.headingGreyColors,
                    fontFamily: "Manrope",
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: MyColors.greyColor,
                      width: 2.0,
                    ),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: MyColors.greyColor,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "CARD NUMBER",
                style: const TextStyle(
                    fontFamily: "Manrope",
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: MyColors.headingGreyColors),
              ),
              TextField(
                keyboardType: TextInputType.text,
                style: const TextStyle(
                    color: MyColors.headingGreyColors,
                    fontFamily: "Manrope",
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: MyColors.greyColor,
                      width: 2.0,
                    ),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: MyColors.greyColor,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "EXP DATE",
                style: const TextStyle(
                    fontFamily: "Manrope",
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: MyColors.headingGreyColors),
              ),
              TextField(
                keyboardType: TextInputType.datetime,
                style: const TextStyle(
                    color: MyColors.headingGreyColors,
                    fontFamily: "Manrope",
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: MyColors.greyColor,
                      width: 2.0,
                    ),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: MyColors.greyColor,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "CVV",
                style: const TextStyle(
                    fontFamily: "Manrope",
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: MyColors.headingGreyColors),
              ),
              TextField(
                keyboardType: TextInputType.number,
                style: const TextStyle(
                    color: MyColors.headingGreyColors,
                    fontFamily: "Manrope",
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: MyColors.greyColor,
                      width: 2.0,
                    ),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: MyColors.greyColor,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                height: 255,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: MyColors.greyColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subtotal",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Manrope",
                                fontWeight: FontWeight.w500,
                                color: MyColors.headingGreyColors),
                          ),
                          Text(
                            "\$35.96",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Manrope",
                                fontWeight: FontWeight.w700,
                                color: MyColors.headingGreyColors),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Manrope",
                                fontWeight: FontWeight.w500,
                                color: MyColors.headingGreyColors),
                          ),
                          Text(
                            "\$2.00",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Manrope",
                                fontWeight: FontWeight.w700,
                                color: MyColors.headingGreyColors),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Manrope",
                                fontWeight: FontWeight.w500,
                                color: MyColors.headingGreyColors),
                          ),
                          Text(
                            "\$37.96",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Manrope",
                                fontWeight: FontWeight.w700,
                                color: MyColors.headingGreyColors),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      BlueButton(
                          height: 59,
                          width: double.infinity,
                          buttonText: "Make Payment")
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
