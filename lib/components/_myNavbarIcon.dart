// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:megafortune/consts/colors.dart';
// import 'package:megafortune/consts/dimensions.dart';
//
// class NavIcon extends StatelessWidget {
//   final String iconPath;
//   final String label;
//   final VoidCallback onTap;
//
//   const NavIcon({
//     super.key,
//     required this.iconPath,
//     required this.label,
//     required this.onTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           SvgPicture.asset(iconPath),
//           Text(
//             label,
//             style: TextStyle(
//               color: primaryColor,
//               fontSize: 10/baseWidth * Get.width,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:megafortune/consts/colors.dart';
import 'package:megafortune/consts/dimensions.dart';

class NavIcon extends StatelessWidget {
  final String iconPath;
  final String label;
  final VoidCallback onTap;
  final bool isActive;

  const NavIcon({
    super.key,
    required this.iconPath,
    required this.label,
    required this.onTap,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconPath,
            color: isActive ? Colors.blue : primaryColor, // Change color based on isActive
          ),
          Text(
            label,
            style: TextStyle(
              color: isActive ? Colors.blue : primaryColor, // Change color based on isActive
              fontSize: 10 / baseWidth * Get.width,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
