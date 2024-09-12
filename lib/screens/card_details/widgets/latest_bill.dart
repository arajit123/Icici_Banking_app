// import 'dart:ffi';

import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LatestBillPage extends StatefulWidget {
  const LatestBillPage({super.key});

  @override
  State<LatestBillPage> createState() => _LatestBillPageState();
}

class _LatestBillPageState extends State<LatestBillPage> {
  Color _borderColor = Colors.orange;
  double _fontSize = 10.sp;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() {
    // Update the border color and text size periodically
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _borderColor = _borderColor == Colors.orange ? Colors.blue : Colors.orange;
        _fontSize = _fontSize == 10.sp ? 14.sp : 10.sp;
      });
      _startAnimation(); // Restart the animation loop
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
          child: Container(
            height: 216.h,
            decoration: BoxDecoration(
              color: IciciBankTheme.backgroundColor,
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(1, 1),
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Credit Limit',
                            style: IciciBankFontTheme.textTheme.labelLarge!
                                .copyWith(
                              color: const Color.fromARGB(255, 8, 129, 236),
                            ),
                          ),
                          Text(
                            '₹80,000,00',
                            style: IciciBankFontTheme.textTheme.bodyLarge!
                                .copyWith(
                              color: const Color.fromARGB(255, 8, 129, 236),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.black),
                          ),
                        ),
                        child: Text(
                          'Manage Limit',
                          style:
                              IciciBankFontTheme.textTheme.bodySmall!.copyWith(
                            color: const Color.fromARGB(255, 4, 69, 129),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Container(
                    width: double.infinity,
                    height: 10.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 34.w,
                          color: Colors.amber,
                        ),
                        Expanded(
                          child: Container(
                            color: IciciBankTheme.blueTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildInfoColumn('Last Billed', 'Due', '₹ 0.00'),
                      _buildInfoColumn('Current', 'Outstanding', '₹ 1,609.22',
                          color: Colors.red),
                      _buildInfoColumn(
                          'Available Credit', 'Limit', '₹ 78,390.78',
                          color: Colors.green),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                _buildAnimatedOfferContainer()
                // Container(
                //   height: 50.h,
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.only(
                //       bottomLeft: Radius.circular(10.r),
                //       bottomRight: Radius.circular(10.r),
                //     ),
                //     color: IciciBankTheme.blueTextColor,
                //   ),
                //    child: ScaleTransition(
                //     scale: _animation,
                //     child: Container(
                //       decoration: BoxDecoration(
                //         color: IciciBankTheme.accentColor
                //       ),
                //       child: Center(child: Text("% Offers",style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(color: IciciBankTheme.backgroundColor),)))),
                // ),
              ],
            ),
          ),
        ),
        _buildLastBilledContainer(),
        _buildRecentTransactionsContainer(),
      ],
    );
  }

  Widget _buildAnimatedOfferContainer() {
    return Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: IciciBankTheme.blueTextColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.r),
          bottomRight: Radius.circular(10.r),
        ),
      ),
      child: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.easeInCirc,
          decoration: BoxDecoration(
            color: IciciBankTheme.backgroundColor,
            border: Border.all(color: _borderColor, width: 2),
            borderRadius: BorderRadius.circular(20.r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(seconds: 1),
            style: TextStyle(
              fontSize: _fontSize,
              color: IciciBankTheme.blueTextColor,
              fontWeight: FontWeight.bold,
            ),
            child: const Text("% Offers"),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoColumn(String title1, String title2, String amount,
      {Color? color}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title1,
          style: IciciBankFontTheme.textTheme.labelLarge!
              .copyWith(color: color ?? Colors.black),
        ),
        Text(
          title2,
          style: IciciBankFontTheme.textTheme.labelLarge!
              .copyWith(color: color ?? Colors.black),
        ),
        Text(
          amount,
          style: IciciBankFontTheme.textTheme.bodyLarge!
              .copyWith(color: color ?? Colors.black),
        ),
      ],
    );
  }

  Widget _buildLastBilledContainer() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
      child: Container(
        height: 216.h,
        decoration: BoxDecoration(
          color: IciciBankTheme.backgroundColor,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Text(
                'Your Last Billed Details',
                style: IciciBankFontTheme.textTheme.bodyLarge!.copyWith(
                  color: const Color.fromARGB(255, 4, 69, 129),
                ),
              ),
            ),
            SizedBox(height: 4.h),
            _buildBilledInfoRow('Payment Due Date', '₹0.00'),
            _buildBilledInfoRow('Minimum Due', '₹0.00'),
            _buildBilledInfoRow('Last Billed Due', '₹0.00'),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 8.w),
              child: Text(
                'In case your current statement has not been generated, the amount due and the due date would be of your last statement. If you have already made the payment, please ignore the Last Bill Due.',
                textAlign: TextAlign.justify,
                style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                  color: const Color.fromARGB(255, 8, 129, 236),
                  fontSize: 9.sp,
                ),
              ),
            ),
            Container(
              height: 50.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.r),
                  bottomRight: Radius.circular(10.r),
                ),
                color: IciciBankTheme.blueTextColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Pay Bill',
                    style: IciciBankFontTheme.textTheme.labelMedium!
                        .copyWith(color: IciciBankTheme.backgroundColor),
                  ),
                  SizedBox(width: 15.w),
                  Text(
                    '|',
                    style: IciciBankFontTheme.textTheme.labelLarge!.copyWith(
                        color: IciciBankTheme.backgroundColor, fontSize: 30.sp),
                  ),
                  Text(
                    'View Statement',
                    style: IciciBankFontTheme.textTheme.labelMedium!
                        .copyWith(color: IciciBankTheme.backgroundColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBilledInfoRow(String title, String amount) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 8.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: IciciBankFontTheme.textTheme.labelLarge,
          ),
          Text(
            amount,
            style: IciciBankFontTheme.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }

  Widget _buildRecentTransactionsContainer() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
      child: Container(
        height: 216.h,
        decoration: BoxDecoration(
          color: IciciBankTheme.backgroundColor,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Text(
                'Recent Transactions',
                style: IciciBankFontTheme.textTheme.bodyLarge!.copyWith(
                  color: const Color.fromARGB(255, 4, 69, 129),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'CAS*IRCTC ETICKETING',
                style: IciciBankFontTheme.textTheme.labelLarge!
                    .copyWith(color: const Color.fromARGB(255, 8, 129, 236)),
              ),
              leading: const Icon(Icons.transcribe_sharp,
                  color: IciciBankTheme.accentColor, size: 20),
              subtitle: Text("08 Sep '24",
                  style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                    color: Colors.grey,
                    fontSize: 9.sp,
                  )),
              trailing: SizedBox(
                width: 100.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '₹1,950.00',
                      style: IciciBankFontTheme.textTheme.labelSmall,
                    ),
                    SizedBox(width: 5.w),
                    const Text(
                      'Cr',
                      style: TextStyle(color: Colors.green),
                    ),
                    SizedBox(
                      width: 9.w,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 17,
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text(
                'CAS*IRCTC ETICKETING',
                style: IciciBankFontTheme.textTheme.labelLarge!
                    .copyWith(color: const Color.fromARGB(255, 8, 129, 236)),
              ),
              leading: const Icon(Icons.transcribe_sharp,
                  color: IciciBankTheme.accentColor, size: 20),
              subtitle: Text("08 Sep '24",
                  style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                    color: Colors.grey,
                    fontSize: 9.sp,
                  )),
              trailing: SizedBox(
                width: 100.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '₹1,950.00',
                      style: IciciBankFontTheme.textTheme.labelSmall,
                    ),
                    SizedBox(width: 5.w),
                    const Text(
                      'Dr',
                      style: TextStyle(color: Colors.red),
                    ),
                    SizedBox(
                      width: 9.w,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 17,
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(height: 10.h),
            Container(
              height: 49.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.r),
                  bottomRight: Radius.circular(10.r),
                ),
                color: IciciBankTheme.blueTextColor,
              ),
              child: Center(
                  child: Text(
                "Last 30 days",
                style: IciciBankFontTheme.textTheme.labelMedium!
                    .copyWith(color: IciciBankTheme.backgroundColor),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
