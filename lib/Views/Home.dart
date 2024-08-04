import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:megafortune/consts/dimensions.dart';

import '../components/_mybutton.dart';
import '../consts/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                      width: Get.width,
                      child: Image.asset(
                        "./assets/images/HeaderImage.png",
                        fit: BoxFit.fill,
                      )),
                  Positioned(
                    top: 80/baseHeight *Get.height,
                    right: 10/baseWidth * Get.width,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15 / baseWidth * Get.width),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset("./assets/images/ChatIcon.svg"),
                          SizedBox(
                            width: 26 / baseWidth * Get.width,
                          ),
                          SvgPicture.asset("./assets/images/NotificationIcon.svg"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 130/baseHeight * Get.height),
                    child: Container(
                      width: Get.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 25/baseWidth * Get.width,vertical: 76/baseHeight * Get.height),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                        width: 243/baseWidth * Get.width,
                                        child: Text("Mega Fortune Online",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:  (20 * Get.width) / baseWidth ,fontFamily: 'Poppins'),)),

                                    CustomButton(width:110 / 430 * Get.width ,height:40 / 932 * Get.height ,text: 'Invite',icon: "./assets/images/shareIcon.svg",bg: Colors.white,textSize:(11 * Get.width) / baseWidth,fontColor: primaryColor,onPressed: () {
                                      print('Button Pressed!');
                                    },),
                                  ],
                                ),
                                SizedBox(height: 31/baseHeight * Get.height,),
                                SizedBox(
                                  width: 373/baseWidth * Get.width,
                                  height: 77/baseHeight * Get.height,
                                  child:  Text(textAlign: TextAlign.center ,"Tap the message button below to begin creating your account and unlock new feature information related to our 15+ gaming systems.",style: TextStyle(color: Colors.black,fontSize: (14 * Get.width )/baseWidth,fontFamily: 'Poppins',fontWeight: FontWeight.w500 ),),),
                                SizedBox(height: 49/baseHeight * Get.height,),
                                SizedBox(
                                  width: 277/baseWidth * Get.width,
                                  height: 31/baseHeight * Get.height,
                                  child:  Text("Open 24/7! Massage Now for info",style: TextStyle(color: Colors.black,fontSize: (15 * Get.width )/baseWidth,fontFamily: 'Poppins',fontWeight: FontWeight.bold ),),),
                                SizedBox(height: 3/baseHeight * Get.height,),
                                SizedBox(
                                  width: Get.width,
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Get In Touch",style: TextStyle(color: Colors.black,fontSize: (21 * Get.width )/baseWidth,fontFamily: 'Poppins',fontWeight: FontWeight.bold ),),
                                          Text("Mega Fortune",style: TextStyle(color: Colors.black,fontSize: (15 * Get.width )/baseWidth,fontFamily: 'Poppins',fontWeight: FontWeight.normal ),),
                                        ],
                                      ),
                                      CustomButton(
                                        width: 110 / 430 * Get.width,
                                        height: 40 / 932 * Get.height,
                                        text: 'Message',
                                        icon: "",
                                        bg: Colors.white,
                                        textSize: (11 * Get.width) / baseWidth,
                                        fontColor:  primaryColor,
                                        onPressed: () {
                                          print('Button Pressed!');
                                        },
                                      ),
                                    ],
                                  ),),
                              ],
                            ),
                          ),
                          Container(
                            width: Get.width,
                            height: 7/baseHeight * Get.height,
                            decoration: BoxDecoration(
                              color: const Color(0xffD9D9D9),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(height: 21/baseHeight * Get.height,),
                          Center(
                            child:
                            CustomButton(
                              width: 168 / 430 * Get.width,
                              height: 45 / 932 * Get.height,
                              text: 'Cashapp Reloads',
                              icon: "",
                              bg: primaryColor,
                              textSize: (12 * Get.width) / baseWidth,
                              fontColor: Colors.white,
                              onPressed: () {
                                print('Button Pressed!');
                              },
                            ),
                          ),
                          SizedBox(height: 21/baseHeight * Get.height,),
                          Center(
                            child: Container(
                              width: 335/baseWidth * Get.width,
                              height: 168/baseHeight * Get.height,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Image.asset("./assets/images/gameImage.png"),
                            ),
                          ),
                          SizedBox(height: 21/baseHeight * Get.height,),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 80/baseHeight * Get.height,
                    left: 30/baseWidth * Get.width,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Image.asset("./assets/images/ProfileImage.png"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}