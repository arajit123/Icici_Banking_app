import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const CommonAppbar(text: 'My Favourite Transactions'),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Stack(clipBehavior: Clip.none, children: [
              Container(
                height: 170.h,
                width: 170.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: IciciBankTheme.accentColor.withOpacity(0.1)),
              ),
              Positioned(
                  left: 35,
                  top: 35,
                  child: Icon(
                    Icons.currency_rupee,
                    size: 100.sp,
                    color: Colors.grey.withOpacity(0.4),
                  )),
              Positioned(
                  left: -20,
                  top: 60,
                  child: Text(
                    'No Transactions!',
                    style: IciciBankFontTheme.textTheme.headlineLarge!.copyWith(
                        fontSize: 27.sp,
                        color: const Color.fromARGB(255, 4, 84, 154)),
                  ))
            ]),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 14.dg,vertical: 7),
            child: Text(
                'Now you can tag any iMobile transaction as a favourite and transact superfast just with a click!',textAlign: TextAlign.justify,style: IciciBankFontTheme.textTheme.bodyMedium?.copyWith(color: Colors.black54),),

          ),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal:14.dg),
            child: Text(
                'Please add favourite transaction by clicking on Add New Payment button below',textAlign: TextAlign.justify,style: IciciBankFontTheme.textTheme.bodyMedium!.copyWith(color: Colors.black54,fontWeight: FontWeight.normal),),
                
          ),
          const Spacer(),
          Container(
            height: 55.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              color:Color.fromARGB(255, 4, 84, 154) 
            ),
            child: Center(child: Text('Add New Payment',style: IciciBankFontTheme.textTheme.bodyLarge!.copyWith(color: Colors.white),)),
          )
        ],
      ),
    ));
  }
}
