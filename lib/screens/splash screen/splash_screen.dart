import 'dart:async';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:banking_app/screens/Home/homescreen.dart';
import 'package:banking_app/screens/login%20screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  late PageController _pageController;
  int _currentPage = 0;
  List<bool> iconVisible = [false, false, false, false]; // To control visibility of icons

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: 0);

    // Timer for showing icons one by one
    _startIconAnimation();

    // Timer for switching between containers
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      setState(() {
        iconVisible = [false, false, false, false]; // Reset icons for the next container
      });

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );

      _startIconAnimation();
    });

    // Navigate to Home screen after 10 seconds
    Timer(const Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  void _startIconAnimation() {
    for (int i = 0; i < 4; i++) {
      Timer(Duration(milliseconds: i * 500), () {
        setState(() {
          iconVisible[i] = true; // Show each icon one by one
        });
      });
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 120.h),
            child: Image.asset(
              'assets/images/logo.png',
              height: 100.h,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100.h),
            child: Text(
              'iMobile',
              style: IciciBankFontTheme.textTheme.titleMedium!.copyWith(
                  color: IciciBankTheme.blueTextColor, fontSize: 50.sp),
            ),
          ),
          Text(
            'All your banking',
            style: IciciBankFontTheme.textTheme.headlineLarge!
                .copyWith(color: IciciBankTheme.blueTextColor),
          ),
          Text(
            'needs in one app',
            style: IciciBankFontTheme.textTheme.headlineLarge!
                .copyWith(color: IciciBankTheme.blueTextColor),
          ),
          const SizedBox(height: 50),

          // PageView for continuous container movement
          SizedBox(
            height: 70.h,
            child: PageView(
              controller: _pageController,
              children: [
                buildContainer([
                  'assets/icons/airplane.png',
                  'assets/icons/bus.png',
                  'assets/icons/train.png',
                  'assets/icons/hotel.png',
                ]),
                buildContainer([
                  'assets/icons/google-play.png',
                  'assets/icons/gift.png',
                  'assets/icons/toll.png',
                  'assets/icons/tv.png',
                ]),
                buildContainer([
                  'assets/icons/bill.png',
                  'assets/icons/electrical-energy.png',
                  'assets/icons/health.png',
                  'assets/icons/satelite.png',
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContainer(List<String> iconPaths) {
    return Container(
      height: 70.h,
      width: double.infinity,
      decoration: const BoxDecoration(color: IciciBankTheme.lightGray),
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(4, (index) {
          return AnimatedOpacity(
            opacity: iconVisible[index] ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            child: Image.asset(
              iconPaths[index],
              height: 40.h,
              width: 40.w,
            ),
          );
        }),
      ),
    );
  }
}
