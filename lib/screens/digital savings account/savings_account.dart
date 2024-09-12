import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DigitalSavingsAccountPage extends StatelessWidget {
  const DigitalSavingsAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CommonAppbar(text: 'Open New Account'),
        body: Column(
          children: [
            SizedBox(height: 15.h,),
            Text("Hi, there!",style: IciciBankFontTheme.textTheme.headlineSmall!.copyWith(
              color: IciciBankTheme.accentColor
            ),),
            Text("Let's get you started",style: IciciBankFontTheme.textTheme.headlineSmall!.copyWith(
              color: IciciBankTheme.blueTextColor
            ),),
            SizedBox(height: 20.h,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: IciciBankTheme.backgroundColor,
                     boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(1, 1),
                  ),
                ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 70.h,
                          width: 70.w,
                          decoration: BoxDecoration(
                            color: IciciBankTheme.lightGray,
                            shape: BoxShape.circle
                          ),
                          child: Image.asset('assets/icons/ss.png',height: 30.h,width: 30.w,color: IciciBankTheme.accentColor,)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Open Savings Account Instantly'),
                            Text('Get an instant account in 4 minutes\n and start transacting digitally.'),
                            Text('Debit Card and Cheque Book will follow')
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: 50.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: IciciBankTheme.blueTextColor,
                        borderRadius: BorderRadius.circular(10.r)
                      ),
                      child: Center(
                        child: Text('Instant Savings Account',style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                          color: IciciBankTheme.backgroundColor
                        ),),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}