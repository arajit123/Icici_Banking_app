import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemofrewardsPage extends StatelessWidget {
  const ItemofrewardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 100.h,
            decoration: BoxDecoration(
              color: IciciBankTheme.backgroundColor,
              borderRadius: BorderRadius.circular(10.r)
              
            ),
            child: Column(
              children: [
                SizedBox(height: 10.h,),
                Center(
                  child: Text('Credit Card Rewards ',style: IciciBankFontTheme.textTheme.bodyLarge!.copyWith(
                    color: IciciBankTheme.blueTextColor
                  ),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/icons/credit.png',height: 50.h,width: 50.w,),
                    Column(
                      children: [
                        Text('Total Saved',style: IciciBankFontTheme.textTheme.bodySmall,),
                        Text('₹',style: IciciBankFontTheme.textTheme.bodyLarge)
                      ],
                    ),
                    Text('|',style: IciciBankFontTheme.textTheme.bodyLarge),
                    Column(
                      children: [
                        Text('Total Cashback',style: IciciBankFontTheme.textTheme.bodySmall),
                        Text('₹',style: IciciBankFontTheme.textTheme.bodyLarge)
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 70.h,
              decoration: BoxDecoration(
                color: IciciBankTheme.backgroundColor,
                borderRadius: BorderRadius.circular(10.r)
                
              ),
          
            child: ListTile(
              title:Text('1254789636984545',style: IciciBankFontTheme.textTheme.labelMedium,),
              subtitle: Text('Amazon Pay',style: IciciBankFontTheme.textTheme.labelSmall,),
              leading: Icon(Icons.credit_card,color: IciciBankTheme.accentColor,),
              trailing: Icon(Icons.arrow_forward_ios_rounded,color: IciciBankTheme.primaryColor,size: 18.sp,),
            ),
          ),
        )
      ],
    );
  }
}