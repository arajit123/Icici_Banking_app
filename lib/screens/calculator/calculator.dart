import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CommonAppbar(text: 'Calculator'),
        body: Column(
          children: [
            ListTile(
              title: Text('Loan Calculator',style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(color: IciciBankTheme.blueTextColor),),
              leading: const Icon(Icons.calculate_outlined,color: IciciBankTheme.blueTextColor,),
              trailing: Icon(Icons.arrow_forward_ios_outlined,size: 18.sp,color: IciciBankTheme.blueTextColor,),
            ),
            Divider(
                color: Colors.grey.withOpacity(0.6),
                thickness: 0.7,
              ),
             ListTile(
              title: Text('Investment Calculator',style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(color: IciciBankTheme.blueTextColor),),
              leading: const Icon(Icons.work_history_outlined,color: IciciBankTheme.blueTextColor,),
              trailing: Icon(Icons.arrow_forward_ios_outlined,size: 18.sp,color: IciciBankTheme.blueTextColor),
            ),
            Divider(
                color: Colors.grey.withOpacity(0.6),
                thickness: 0.7,
              ),
             ListTile(
              title: Text('Retirement  Calculator',style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(color: IciciBankTheme.blueTextColor),),
              leading: const Icon(Icons.reduce_capacity_rounded,color: IciciBankTheme.blueTextColor,),
              trailing: Icon(Icons.arrow_forward_ios_outlined,size: 18.sp,color: IciciBankTheme.blueTextColor),
            ),
            Divider(
                color: Colors.grey.withOpacity(0.6),
                thickness: 0.7,
              ),
          ],
        ),
      ),
    );
  }
}