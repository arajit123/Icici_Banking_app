import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemofbookticketsPage extends StatelessWidget {
  const ItemofbookticketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 70.h,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'From',
                        style: IciciBankFontTheme.textTheme.labelSmall,
                      ),
                      Icon(
                        Icons.flag_circle_outlined,
                        size: 25.sp,
                        color: IciciBankTheme.accentColor,
                      ),
                    ],
                  ),
                  Text(
                    'From',
                    style: IciciBankFontTheme.textTheme.labelMedium!
                        .copyWith(color: IciciBankTheme.primaryColor),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.sync_alt_outlined,
                      size: 30.sp,
                      color: IciciBankTheme.accentColor,
                    ),
                  ),
                  Text(
                    'To',
                    style: IciciBankFontTheme.textTheme.labelMedium!
                        .copyWith(color: IciciBankTheme.primaryColor),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'To',
                        style: IciciBankFontTheme.textTheme.labelSmall,
                      ),
                      Icon(
                        Icons.flag_circle_outlined,
                        size: 25.sp,
                        color: IciciBankTheme.accentColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        // Depart on section
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 70.h,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Depart On',
                    style: IciciBankFontTheme.textTheme.labelMedium!
                        .copyWith(color: IciciBankTheme.primaryColor),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.calendar_month_outlined,
                        color: IciciBankTheme.accentColor,
                        size: 25.sp,
                      ),
                      Text(
                        'Tue, 17 Sep, 2024',
                        style: IciciBankFontTheme.textTheme.labelSmall!
                            .copyWith(fontSize: 15.sp),
                      ),
                      Text(
                        'Today',
                        style: IciciBankFontTheme.textTheme.labelMedium!
                            .copyWith(color: IciciBankTheme.primaryColor),
                      ),
                      Text('|'),
                      Text(
                        'Tomorrow',
                        style: IciciBankFontTheme.textTheme.labelMedium!
                            .copyWith(color: IciciBankTheme.primaryColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        // Quota section
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 70.h,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Quota',
                    style: IciciBankFontTheme.textTheme.labelMedium!
                        .copyWith(color: IciciBankTheme.primaryColor),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person_2_outlined,
                        color: IciciBankTheme.accentColor,
                        size: 25.sp,
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        "General",
                        style: IciciBankFontTheme.textTheme.labelSmall!
                            .copyWith(
                          fontSize: 15.sp,
                          color: IciciBankTheme.textColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        // Disclaimer checkbox
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.check_box_outline_blank,color: IciciBankTheme.accentColor,),
              SizedBox(width: 10.w,),
              Text(
                'Disclaimer',
                style: IciciBankFontTheme.textTheme.labelSmall!
                    .copyWith(fontSize: 15.sp, color: IciciBankTheme.primaryColor),
              ),
            ],
          ),
        ),
        // Search Trains button
          SizedBox(
            height: 60.h,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: IciciBankTheme.accentColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Search Trains',
                  style: IciciBankFontTheme.textTheme.labelMedium!
                      .copyWith(color: IciciBankTheme.backgroundColor,fontSize: 16.sp),
                ),
              ),
            ),
          ),
        // Last row with clickable, underlined text
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  // Handle Quick Book tap
                },
                child: Row(
                  children: [
                    Icon(Icons.skip_next_outlined,color: IciciBankTheme.primaryColor,),
                    SizedBox(width: 5.w),
                    Text(
                      "Quick Book",
                      style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                        decoration: TextDecoration.underline,
                        color: IciciBankTheme.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Handle Recent Searches tap
                },
                child: Row(
                  children: [
                    Icon(Icons.access_time,color: IciciBankTheme.primaryColor,),
                    SizedBox(width: 5.w),
                    Text(
                      "Recent Searches",
                      style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                        decoration: TextDecoration.underline,
                        color: IciciBankTheme.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
