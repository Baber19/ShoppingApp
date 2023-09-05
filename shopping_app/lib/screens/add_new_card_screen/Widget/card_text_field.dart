import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class CardTextField extends StatelessWidget {
  final String textFieldName;
  final TextInputType keyboadType;
  const CardTextField(
      {super.key, required this.textFieldName, required this.keyboadType});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          textFieldName,
          style: const TextStyle(
              fontFamily: "Manrope",
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: MyColors.headingGreyColors),
        ),
        TextField(
          keyboardType: keyboadType,
          style: const TextStyle(
              color: MyColors.headingGreyColors,
              fontFamily: "Manrope",
              fontSize: 20,
              fontWeight: FontWeight.w500),
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
      ],
    );
  }
}
