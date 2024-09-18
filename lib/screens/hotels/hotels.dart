import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotelsPage extends StatelessWidget {
  const HotelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: IciciBankTheme.lightGray,
        appBar: const CommonAppbar(text: 'Hotels'),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: IciciBankTheme.backgroundColor),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                    'Bangalore',
                    style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(),
                  )),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 65.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: IciciBankTheme.backgroundColor,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Check-in Date',
                          style: IciciBankFontTheme.textTheme.labelSmall!
                              .copyWith(color: IciciBankTheme.textColor),
                        ),
                        Text(
                          '18 September',
                          style: IciciBankFontTheme.textTheme.labelMedium!
                              .copyWith(
                                  color: IciciBankTheme.textColor,
                                  fontSize: 14.sp),
                        ),
                        Text(
                          'Wednesday',
                          style: IciciBankFontTheme.textTheme.labelMedium!
                              .copyWith(
                                  color: IciciBankTheme.blueTextColor,
                                  fontSize: 13.sp),
                        )
                      ],
                    ),
                    Stack(clipBehavior: Clip.none, children: [
                      SizedBox(
                        height: 65.h,
                        child: const VerticalDivider(
                          color: IciciBankTheme.accentColor,
                          thickness: 2,
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: -8,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 5.h),
                            child: Text(
                              '1N',
                              style: IciciBankFontTheme.textTheme.labelSmall!
                                  .copyWith(
                                      color: IciciBankTheme.blueTextColor),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    Column(
                      children: [
                        Text(
                          'Check-out Date',
                          style: IciciBankFontTheme.textTheme.labelSmall!
                              .copyWith(color: IciciBankTheme.textColor),
                        ),
                        Text(
                          '19 September',
                          style: IciciBankFontTheme.textTheme.labelMedium!
                              .copyWith(
                                  color: IciciBankTheme.textColor,
                                  fontSize: 14.sp),
                        ),
                        Text(
                          'Thursday',
                          style: IciciBankFontTheme.textTheme.labelMedium!
                              .copyWith(
                                  color: IciciBankTheme.blueTextColor,
                                  fontSize: 13.sp),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 65.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: IciciBankTheme.backgroundColor,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        'Select Rooms & Guests',
                        style: IciciBankFontTheme.textTheme.labelMedium!
                            .copyWith(color: IciciBankTheme.blueTextColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(' 1 Room  |  2 Adults'),
                          Icon(
                            Icons.edit_outlined,
                            size: 30.sp,
                            color: IciciBankTheme.accentColor,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 50.h,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: IciciBankTheme.blueTextColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r))),
                    onPressed: () {},
                    child: Text(
                      'Search Hotels',
                      style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                          color: IciciBankTheme.backgroundColor,
                          fontSize: 15.sp),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
