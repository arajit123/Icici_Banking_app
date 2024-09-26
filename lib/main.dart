// import 'package:banking_app/constant/font_theme.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/extra/navigation_drawer.dart';
import 'package:banking_app/screens/login%20screen/login_screen.dart';
// import 'package:banking_app/extra/navigation_drawer.dart';
// import 'package:banking_app/screens/Home/homescreen.dart';
import 'package:banking_app/screens/splash%20screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Importing screenutil package

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360.0,784.0), // Design size based on target device screen size
      minTextAdapt: true, // To make text scale based on screen size
      splitScreenMode: true, // Enable split-screen mode adaptability
      builder: (context, child) {
        // Print screen size and height usinga MediaQuery and ScreenUtil
        // print("Screen width: ${ScreenUtil().screenWidth} dp");
        // print("Screen height: ${ScreenUtil().screenHeight} dp");
        // print("MediaQuery height: ${MediaQuery.of(context).size.height} dp");
        // print("MediaQuery width: ${MediaQuery.of(context).size.width} dp");

        return MaterialApp(
          title: 'ICICI Bank Clone',
          debugShowCheckedModeBanner: false,
          theme: IciciBankTheme.themeData(context),
          home: const SplashScreen()
        );
      },
    );
  }
}
