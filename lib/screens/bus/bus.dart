import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusPage extends StatelessWidget {
  const BusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: IciciBankTheme.lightGray,
        appBar: const CommonAppbar(text: 'Bus'),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 85.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: IciciBankTheme.backgroundColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '.',
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: IciciBankTheme.accentColor),
                          ),
                          SizedBox(
                            height: 30.h,
                            child: const VerticalDivider(
                              color: IciciBankTheme.accentColor,
                              thickness: 1,
                            ),
                          ),
                          const Icon(
                            Icons.directions_bus_rounded,
                            size: 20,
                            color: IciciBankTheme.accentColor,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('From',
                                style: IciciBankFontTheme.textTheme.labelSmall!
                                    .copyWith(
                                  color: IciciBankTheme.blueTextColor,
                                )),
                            const Divider(
                              color: IciciBankTheme.lightGray,
                              thickness: 1,
                            ),
                            Text('To',
                                style: IciciBankFontTheme.textTheme.labelSmall!
                                    .copyWith(
                                  color: IciciBankTheme.blueTextColor,
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: IciciBankTheme.accentColor,
                          width: 2,
                        ),
                      ),
                      child: const Icon(Icons.sync_alt_outlined,
                          color: IciciBankTheme.accentColor),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 70.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: IciciBankTheme.backgroundColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.calendar_month_outlined,
                              color: IciciBankTheme.accentColor),
                          SizedBox(width: 8.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Select Date',
                                  style: IciciBankFontTheme.textTheme.labelSmall!
                                      .copyWith(
                                          color: IciciBankTheme.blueTextColor,
                                          fontSize: 15.sp)),
                              Text('Wed, 18 September (Today)',
                                  style: IciciBankFontTheme.textTheme.labelMedium!
                                      .copyWith(
                                    color: IciciBankTheme.textColor,
                                  )),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        "Tomorrow",
                        style: IciciBankFontTheme.textTheme.labelMedium!
                            .copyWith(color: IciciBankTheme.accentColor),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 70.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: IciciBankTheme.backgroundColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.ac_unit_sharp,
                              color: IciciBankTheme.accentColor),
                          SizedBox(height: 4.h),
                          Text('AC',
                              style: IciciBankFontTheme.textTheme.labelSmall!
                                  .copyWith(
                                color: IciciBankTheme.textColor,
                              )),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.bolt_sharp,
                              color: IciciBankTheme.accentColor),
                          SizedBox(height: 4.h),
                          Text('Non AC',
                              style: IciciBankFontTheme.textTheme.labelSmall!
                                  .copyWith(
                                color: IciciBankTheme.textColor,
                              )),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.bed_rounded,
                              color: IciciBankTheme.accentColor),
                          SizedBox(height: 4.h),
                          Text('Sleeper',
                              style: IciciBankFontTheme.textTheme.labelSmall!
                                  .copyWith(
                                color: IciciBankTheme.textColor,
                              )),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.airline_seat_legroom_normal_rounded,
                              color: IciciBankTheme.accentColor),
                          SizedBox(height: 4.h),
                          Text('Seater',
                              style: IciciBankFontTheme.textTheme.labelSmall!
                                  .copyWith(
                                color: IciciBankTheme.textColor,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 50.h,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: IciciBankTheme.blueTextColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('Find Cheapest Buses',
                      style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                          color: IciciBankTheme.backgroundColor,
                          fontSize: 15.sp)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
