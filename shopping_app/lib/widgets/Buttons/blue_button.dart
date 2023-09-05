import 'package:flutter/material.dart';
import 'package:shopping_app/constants/colors.dart';

class BlueButton extends StatefulWidget {
  final double height;
  final double width;
  final String buttonText;

  const BlueButton({
    super.key,
    required this.height,
    required this.width,
    required this.buttonText,
  });

  @override
  State<BlueButton> createState() => _MyButtonsState();
}

class _MyButtonsState extends State<BlueButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: const BoxDecoration(
        color: MyColors.darkBlueColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Center(
        child: Text(
          widget.buttonText,
          style: const TextStyle(
              fontFamily: "Manrope",
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white),
        ),
      ),
    );
  }
}
