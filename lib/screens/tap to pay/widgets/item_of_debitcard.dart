import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class ItemOfDebitcardPage extends StatelessWidget {
  const ItemOfDebitcardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Lottie.asset('assets/lottie/Animation - 1727076192885.json'),
       Text("Sorry, You don't have a debit card",style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
        fontSize: 15.sp,
        color: IciciBankTheme.textColor
       ),)
      ],
    );
  }
}