import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemofcheckpnrPage extends StatelessWidget {
  const ItemofcheckpnrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 25.h),
        Text(
          'Enter the PNR to get Status',
          style: IciciBankFontTheme.textTheme.bodyMedium!.copyWith(
            fontSize: 16.sp,
            color: IciciBankTheme.primaryColor,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 8.h),
          child: Container(
            height: 50.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: Colors.grey.shade400),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter PNR',
                  border: InputBorder.none,
                ),
                style: IciciBankFontTheme.textTheme.labelSmall,
                keyboardType: TextInputType.number,
              ),
            ),
          ),
        ),
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
              onPressed: () {
                // Add your logic here
              },
              child: Text(
                'Get Status',
                style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                  color: IciciBankTheme.backgroundColor,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.w),
            child: Row(
              children: [
                Icon(
                  Icons.receipt_long_outlined,
                  color: IciciBankTheme.accentColor,
                  size: 30.sp,
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    'As per IRCTC guidelines, PNR status will be available only for tickets booked through ICICI Bank.',
                    style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                      color: IciciBankTheme.blueTextColor,
                      fontSize: 10.sp,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
