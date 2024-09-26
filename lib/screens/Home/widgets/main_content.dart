import 'dart:async';

import 'package:banking_app/constant/font_theme.dart';
import 'package:banking_app/screens/Home/widgets/bottom_nav_home.dart';
import 'package:banking_app/screens/Home/widgets/item_of_home.dart';
import 'package:banking_app/screens/Home/widgets/item_of_shop.dart';
import 'package:banking_app/screens/pin%20verification%20page/pin_verification_page.dart';
// import 'package:banking_app/screens/favourite/favourite_screen.dart';
// import 'package:banking_app/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainContent extends StatefulWidget {
  const MainContent({super.key});

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent>
    with SingleTickerProviderStateMixin {
  bool _isBalanceChecked = false;
  final _balance = "₹25,000";
  Timer? _balanceTimer;
  late TabController _tabController;
  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _balanceTimer?.cancel();
    super.dispose();
  }

  void _showBalanceForLimitedTime() {
    setState(() {
      _isBalanceChecked = true;
    });
    _balanceTimer = Timer(const Duration(seconds: 5), () {
      setState(() {
        _isBalanceChecked = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.dg),
            child: SizedBox(
              height: 173.h,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: [
                  // First container
                  Container(
                    width: 270.w,
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/bc.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40.h,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 8.h),
                                child: Text(
                                  'My Savings Account',
                                  style: IciciBankFontTheme.textTheme.bodyLarge!
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                              Image.asset(
                                'assets/images/logo.png',
                                height: 90,
                                width: 90,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 11.h),
                        Text(
                          'Credit Card 1254789636985478',
                          style: IciciBankFontTheme.textTheme.bodySmall!
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          height: 35.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.r),
                            border: Border.all(color: Colors.white, width: 1.w),
                          ),
                          child: Center(
                            child: GestureDetector(
                              onTap: _isBalanceChecked
                                  ? null
                                  : () async {
                                      bool isVerified = await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const PinVerificationPage()));
                                      if (isVerified == true) {
                                        _showBalanceForLimitedTime();
                                      }
                                    },
                              child: Text(
                                _isBalanceChecked ? _balance : "Check Balance",
                                style: IciciBankFontTheme.textTheme.bodyMedium!
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15.h),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Reset PIN',
                              style: IciciBankFontTheme.textTheme.bodyMedium!
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              '|',
                              style: IciciBankFontTheme.textTheme.bodyMedium!
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              'Pay Bill',
                              style: IciciBankFontTheme.textTheme.bodyMedium!
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              '|',
                              style: IciciBankFontTheme.textTheme.bodyMedium!
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              'Block Card',
                              style: IciciBankFontTheme.textTheme.bodyMedium!
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        )
                      ],
                    ),
                  ),
                  // Second container
                  Container(
                    width: 270.w,
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/bc.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40.h,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 8.h),
                                child: Text(
                                  'My Savings Account',
                                  style: IciciBankFontTheme.textTheme.bodyLarge!
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                              Image.asset(
                                'assets/images/logo.png',
                                height: 90,
                                width: 90,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12.h),
                        Image.asset(
                          'assets/icons/cc.png',
                          height: 55.h,
                          width: 55.w,
                          color: Colors.white,
                        ),
                        SizedBox(height: 5.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          child: Column(
                            children: [
                              Text(
                                'Comprehensive Digital',
                                style: IciciBankFontTheme.textTheme.headlineSmall!
                                    .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal),
                              ),
                              Text(
                                'Saving Account',
                                style: IciciBankFontTheme.textTheme.headlineSmall!
                                    .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 4.h),
          Center(
            child: Container(
              height: 40.h,
              width: 330.w,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(1, 1),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: TabBar(
                  controller: _tabController,
                  labelStyle: IciciBankFontTheme.textTheme.labelMedium,
                  tabs: const [
                    Tab(
                      text: 'Home',
                    ),
                    Tab(text: 'Shop'),
                  ],
                  indicator: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFFF99D27), Color(0xFFf6711d)],
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black54,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 395.h,
            child: TabBarView(
              controller: _tabController,
              // ignore: prefer_const_literals_to_create_immutables
              children: [const ItemOfHome(), const ItemOfShop()],
            ),
          ),
          // SizedBox(height: 5.h,),
          Text(
            'Last visited :03rd Sep 2024 , 15:29:34',
            style: IciciBankFontTheme.textTheme.displaySmall!
                .copyWith(color: Colors.blueAccent),
          ),
          const Divider(
            // thickness: 1,
            color: Colors.black,
          ),
          const BottomNavItemOfHome()
        ],
      ),
    );
  }
}
