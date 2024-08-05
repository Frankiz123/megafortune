
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megafortune/consts/dimensions.dart';

class PlatformItem extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  const PlatformItem({super.key, required this.imagePath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 95 / baseHeight * Get.height,
        width: 95 / baseWidth * Get.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Image.asset(imagePath),
      ),
    );
  }
}
