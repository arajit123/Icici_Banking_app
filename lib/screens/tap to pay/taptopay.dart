import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/common_widgets/custom_tabbar.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:banking_app/screens/tap%20to%20pay/widgets/item_of_creditcard.dart';
import 'package:banking_app/screens/tap%20to%20pay/widgets/item_of_debitcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaptopayPage extends StatelessWidget {
  const TaptopayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CommonAppbar(text: 'Tap to Pay'),
        body: Column(
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12.w),
              child: Container(
                height:100.h,
                decoration: BoxDecoration(
                  color: IciciBankTheme.accentColor.withOpacity(0.1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.r),
                    bottomRight: Radius.circular(10.r)
                    
                  )
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 50.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tap to Pay enabled',style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                        fontSize: 22.sp,
                        color: IciciBankTheme.blueTextColor
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('0',style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                            fontSize: 20.sp
                          ),),
                          Text('Debit Card',style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                            fontSize: 18.sp
                          ),),
                          Text('|',style: TextStyle(
                            fontSize: 30.sp,fontWeight: FontWeight.bold
                          ),),
                         Text('0',style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                            fontSize: 20.sp
                          ),),
                          Text('Credit Card',style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                            fontSize: 18.sp
                          ),), 
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            CustomTabbar(
              tabheight: 528.h,
              labelStyle: IciciBankFontTheme.textTheme.labelSmall,
              tabTitles: const [
             'Debit Card',
             'Credit Card'
            ], tabViews: const [
              ItemOfDebitcardPage(),
             ItemOfCreditcardPage()
            ])
          ],
        ),
      ),
    );
  }
}