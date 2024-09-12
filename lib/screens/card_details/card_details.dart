import 'dart:ffi';
import 'dart:math';

import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:banking_app/screens/card_details/widgets/latest_bill.dart';
import 'package:banking_app/screens/card_details/widgets/manage_card.dart';
import 'package:banking_app/screens/card_details/widgets/statement.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardDetailsPage extends StatefulWidget {
  const CardDetailsPage({super.key});

  @override
  State<CardDetailsPage> createState() => _CardDetailsPageState();
}

class _CardDetailsPageState extends State<CardDetailsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isSwitch = false;
    return SafeArea(
      child: Scaffold(
        appBar: const CommonAppbar(text: 'Latest Bill'),
        body: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Container(
                height: 240.h,
                width: 280.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(1, 1),
                      ),
                    ]
                    // image: DecorationImage(image:AssetImage('assets/images/amazon.jpeg'))
                    ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10.dg),
                            child: Image.asset('assets/images/amazon.jpeg')),
                        Positioned(
                            top: 30.h,
                            left: 30.w,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '1234585749658585',
                                  style: IciciBankFontTheme
                                      .textTheme.bodyMedium!
                                      .copyWith(
                                          color: Colors.white, fontSize: 18.sp),
                                ),
                                SizedBox(
                                  height: 40.h,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Valid',
                                          style: IciciBankFontTheme
                                              .textTheme.bodySmall!
                                              .copyWith(color: Colors.white),
                                        ),
                                        Text('From',
                                            style: IciciBankFontTheme
                                                .textTheme.bodySmall!
                                                .copyWith(color: Colors.white))
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text('08/24',
                                        style: IciciBankFontTheme
                                            .textTheme.bodyMedium!
                                            .copyWith(
                                                color: Colors.white,
                                                fontSize: 16.sp)),
                                    SizedBox(
                                      width: 25.w,
                                    ),
                                    Column(
                                      children: [
                                        Text('Valid',
                                            style: IciciBankFontTheme
                                                .textTheme.bodySmall!
                                                .copyWith(color: Colors.white)),
                                        Text('Thru',
                                            style: IciciBankFontTheme
                                                .textTheme.bodySmall!
                                                .copyWith(color: Colors.white))
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text('08/31',
                                        style: IciciBankFontTheme
                                            .textTheme.bodyMedium!
                                            .copyWith(
                                                color: Colors.white,
                                                fontSize: 16.sp))
                                  ],
                                ),
                                Text('ARAJIT GARAI',
                                    style: IciciBankFontTheme
                                        .textTheme.bodyMedium!
                                        .copyWith(
                                            color: Colors.white,
                                            fontSize: 18.sp))
                              ],
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            const Icon(
                              Icons.lock_reset_sharp,
                              color: IciciBankTheme.accentColor,
                            ),
                            Text(
                              'Temp Block',
                              style: IciciBankFontTheme.textTheme.displaySmall!
                                  .copyWith(
                                      color: IciciBankTheme.blueTextColor,
                                      fontSize: 12.sp),
                            )
                          ],
                        ),
                        Text('|',
                            style: IciciBankFontTheme.textTheme.displaySmall!
                                .copyWith(
                                    color: IciciBankTheme.blueTextColor,
                                    fontSize: 12.sp)),
                        Column(
                          children: [
                            const Icon(
                              Icons.sync_lock_sharp,
                              color: IciciBankTheme.accentColor,
                            ),
                            Text('Generate PIN',
                                style: IciciBankFontTheme
                                    .textTheme.displaySmall!
                                    .copyWith(
                                        color: IciciBankTheme.blueTextColor,
                                        fontSize: 12.sp))
                          ],
                        ),
                        Text('|',
                            style: IciciBankFontTheme.textTheme.displaySmall!
                                .copyWith(
                                    color: IciciBankTheme.blueTextColor,
                                    fontSize: 12.sp)),
                        Column(
                          children: [
                            const Icon(
                              Icons.receipt_long,
                              color: IciciBankTheme.accentColor,
                            ),
                            Text('Pay Bill',
                                style: IciciBankFontTheme
                                    .textTheme.displaySmall!
                                    .copyWith(
                                        color: IciciBankTheme.blueTextColor,
                                        fontSize: 12.sp))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Row(
                children: [
                  Text('|',
                      style: IciciBankFontTheme.textTheme.displaySmall!
                          .copyWith(
                              color: IciciBankTheme.blueTextColor,
                              fontSize: 12.sp)),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text('CVV ***',
                      style: IciciBankFontTheme.textTheme.displaySmall!
                          .copyWith(
                              color: IciciBankTheme.blueTextColor,
                              fontSize: 12.sp)),
                  Transform.scale(
                    scale: 0.7,
                    child: Switch(
                      activeColor: IciciBankTheme.accentColor,
                      inactiveTrackColor: Colors.grey,
                      value: isSwitch,
                      onChanged: (value) {
                        setState(() {
                          isSwitch = value;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    height: 55.h,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(10.dg),
                      color: Colors.grey.shade200.withOpacity(0.9),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black.withOpacity(0.1),
                      //     spreadRadius: 1,
                      //     blurRadius: 1,
                      //     offset: const Offset(1, 1),
                      //   ),
                      // ],
                    ),
                    child: TabBar(
                      
                      controller: _tabController,
                      labelStyle: IciciBankFontTheme.textTheme.bodyMedium!.copyWith(
                        fontSize: 14.sp
                      )
                          .copyWith(color: Colors.white),
                      tabs: const [
                        Tab(
                          text: 'Latest Bill',
                        ),
                        Tab(
                          text: 'Statements',
                        ),
                        Tab(
                          text: 'Manage Card',
                        )
                      ],
                      indicator: const BoxDecoration(
                    
                          // borderRadius: BorderRadius.circular(),
                          color: IciciBankTheme.blueTextColor
                          ),
                      labelColor: IciciBankTheme.backgroundColor,
                      unselectedLabelColor: IciciBankTheme.blueTextColor,
                      indicatorSize: TabBarIndicatorSize.tab,
                      dividerColor: Colors.transparent,

                    ),
                  ),
                ),
                SizedBox(
                  height: 325.h,
                  child: TabBarView(
                    controller: _tabController,
                    children: const [LatestBillPage(), CardStatementPage(), ManageCardPage()],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
