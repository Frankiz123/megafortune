import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:megafortune/Views/Home.dart';

import 'Views/Index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Mega Fortune',
          home: child,
        );
      },
      child: const Index(),
    );
  }
}
