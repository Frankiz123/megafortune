import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/_myNavbarIcon.dart';
import '../consts/dimensions.dart';
import 'Home.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List<Widget> screens = [Home(),];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: BottomAppBar(
          height: 85 / baseHeight * Get.height,
          notchMargin: 0,
          elevation: 0,
          child: SizedBox(
            width: Get.width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50 / baseWidth * Get.width),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavIcon(
                    iconPath: "./assets/images/homeIcon.svg",
                    label: "Home",
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                  ),
                  SizedBox(width: 15/baseWidth * Get.width),
                  NavIcon(
                    iconPath: "./assets/images/PlatformIcon.svg",
                    label: "Platforms",
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                  ),
                  SizedBox(width: 15/baseWidth * Get.width),
                  NavIcon(
                    iconPath: "./assets/images/cartIcon.svg",
                    label: "Buy Credit",
                    onTap: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                  ),
                  SizedBox(width: 15/baseWidth * Get.width),
                  NavIcon(
                    iconPath: "./assets/images/contactIcon.svg",
                    label: "Contact Us",
                    onTap: () {
                      setState(() {
                        currentIndex = 3;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
