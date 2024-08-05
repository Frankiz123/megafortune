import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:megafortune/consts/colors.dart';
import 'package:megafortune/consts/dimensions.dart';

import '../components/_myPlatformRow.dart';
import '../consts/platformData.dart';

class Platform extends StatefulWidget {
  const Platform({super.key});

  @override
  State<Platform> createState() => _PlatformState();
}

class _PlatformState extends State<Platform> {
  void _onPlatformItemTap(int index) {
    print('Platform item $index tapped');
  }

  @override
  Widget build(BuildContext context) {

    List<List<VoidCallback>> onTapCallbackGroups = [
      [
        () => _onPlatformItemTap(1),
        () => _onPlatformItemTap(2),
        () => _onPlatformItemTap(3)
      ],
      [
        () => _onPlatformItemTap(4),
        () => _onPlatformItemTap(5),
        () => _onPlatformItemTap(6)
      ],
      [
        () => _onPlatformItemTap(7),
        () => _onPlatformItemTap(8),
        () => _onPlatformItemTap(9)
      ],
      [
        () => _onPlatformItemTap(10),
        () => _onPlatformItemTap(11),
        () => _onPlatformItemTap(12)
      ],
      [() => _onPlatformItemTap(13)]
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 24 / baseHeight * Get.height,
                  horizontal: 24 / baseWidth * Get.width),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("./assets/images/personIcon.svg"),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "./assets/images/ChatIcon.svg",
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: 26 / baseWidth * Get.width,
                      ),
                      SvgPicture.asset(
                        "./assets/images/NotificationIcon.svg",
                        color: primaryColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 41 / baseHeight * Get.height,
            ),
            Center(
              child: SizedBox(
                width: /*243 / baseWidth */ Get.width,
                // height: 35 / baseHeight * Get.height,
                child: Text(
                  textAlign: TextAlign.center,
                  "Gaming Platforms",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: (21 * Get.width) / baseWidth),
                ),
              ),
            ),
            SizedBox(
              height: 27 / baseHeight * Get.height,
            ),
            Expanded(
              child: Container(
                width: Get.width,
                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    for (int i = 0; i < imagePathGroups.length; i++) ...[
                      Padding(
                        padding: EdgeInsets.only(
                            top: 15 / baseHeight * Get.height,
                            left: 45 / baseWidth * Get.width,
                            right: 45 / baseWidth * Get.width),
                        child: PlatformRow(
                          imagePaths: imagePathGroups[i],
                          onTapCallbacks: onTapCallbackGroups[i],
                        ),
                      ),
                    ],
                    Padding(
                      padding:  EdgeInsets.only(right: 20/baseWidth * Get.width),
                      child: SvgPicture.asset("./assets/images/nextIcon.svg"),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
