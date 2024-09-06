import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/common_widgets/custom_text_form_field.dart';
import 'package:banking_app/common_widgets/custom_text_label.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Custom widget for text label


// Custom widget for TextField


class ChangeLoginPin extends StatelessWidget {
  const ChangeLoginPin({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CommonAppbar(text: 'Change Login PIN'),
        body: SingleChildScrollView(
          // Add SingleChildScrollView in case of long forms
          child: Padding(
            padding: EdgeInsets.all(12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                const CustomTextLabel(label: 'Current Login PIN'),
                SizedBox(height: 8.h),
                const CustomTextField(
                  hintText: 'Enter 4 Digit Login PIN Number',
                  obscureText: true,
                  textInputType: TextInputType.number,
                ),
                SizedBox(height: 20.h),
                const CustomTextLabel(label: 'New Login PIN'),
                SizedBox(height: 8.h),
                const CustomTextField(
                  hintText: 'Enter 4 Digit Login PIN Number',
                  obscureText: true,
                  textInputType: TextInputType.number,
                ),
                SizedBox(height: 20.h),
                const CustomTextLabel(label: 'Confirm New Login PIN'),
                SizedBox(height: 8.h),
                const CustomTextField(
                  hintText: 'Enter 4 Digit Login PIN Number',
                  obscureText: true,
                  textInputType: TextInputType.number,
                ),
                SizedBox(height: 30.h),
                Center(
                  child: Container(
                    height: 50.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      // borderRadius: BorderRadius.horizontal()
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: IciciBankTheme.blueTextColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.dg)
                        )
                      ),
                      onPressed: () {
                        // Handle submit button action
                      },
                      child: Text("Submit",style: IciciBankFontTheme.textTheme.bodyLarge!.copyWith(
                        color: Colors.white
                      ),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
