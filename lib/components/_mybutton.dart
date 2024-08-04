import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CustomButton extends StatefulWidget {
  final double width;
  final double height;
  final String text;
  final String? icon;
  final Color bg;
  final double textSize;
  final Color fontColor;
  final VoidCallback? onPressed; // Add onPressed parameter

  const CustomButton({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    this.icon,
    required this.bg,
    required this.textSize,
    required this.fontColor,
    this.onPressed, // Initialize onPressed parameter
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: ElevatedButton(
        onPressed: widget.onPressed, // Call onPressed function
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(widget.bg),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(color: Color(0xffA13941), width: 3),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            widget.icon != "" ? SvgPicture.asset(widget.icon!) : SizedBox(),
            Text(
              widget.text,
              style: TextStyle(
                fontSize: widget.textSize,
                fontFamily: 'Poppins',
                color: widget.fontColor, // Use widget.fontColor instead of hardcoded color
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
