import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBillsItemPage extends StatelessWidget {
  const MyBillsItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.h,),
        Container(
          height: 50.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.receipt_outlined,
                  size: 20,
                  color: IciciBankTheme.blueTextColor,
                ),
                SizedBox(width: 10.w),
                Text(
                  'My Registered Billers',
                  style: IciciBankFontTheme.textTheme.displaySmall!
                      .copyWith(fontSize: 14.sp),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'No registered billers found. To add a new biller, please click on Add biller option below.',
            textAlign: TextAlign.justify,
            style: IciciBankFontTheme.textTheme.displaySmall!
                .copyWith(fontSize: 12.sp),
          ),
        ),
        const Spacer(), // This ensures the content pushes down and doesn't cause overflow
        Container(
          height: 55.h,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: IciciBankTheme.blueTextColor,
          ),
          child: Center(
            child: Text(
              'Manage Billers',
              style: IciciBankFontTheme.textTheme.labelMedium!
                  .copyWith(
                    color: IciciBankTheme.backgroundColor,
                    fontSize: 16.sp,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
