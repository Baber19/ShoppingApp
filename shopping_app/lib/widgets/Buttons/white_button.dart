import 'package:flutter/material.dart';
import 'package:shopping_app/constants/colors.dart';

class WhiteButton extends StatefulWidget {
  final double height;
  final double width;
  final String buttonText;
  final Icon? buttonIcons;

  const WhiteButton({
    this.buttonIcons,
    super.key,
    required this.height,
    required this.width,
    required this.buttonText,
  });

  @override
  State<WhiteButton> createState() => _MyButtonsState();
}

class _MyButtonsState extends State<WhiteButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: MyColors.darkBlueColor, width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  widget.buttonText,
                  style: const TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: MyColors.darkBlueColor),
                ),
              ),
              if (widget.buttonIcons != null) // Conditionally show the icon
                IconButton(
                  onPressed: () {},
                  icon: widget.buttonIcons!,
                  color: MyColors.darkBlueColor,
                  iconSize: 25,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
