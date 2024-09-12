import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MandatoryItemPage extends StatelessWidget {
  const MandatoryItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical:20.h,horizontal: 15.w),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(1, 1),
                  ),
                ],
            )
            ,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.phone_in_talk_outlined,color: IciciBankTheme.accentColor,),
                      SizedBox(width: 10.w,),
                      Text('Phone',style: IciciBankFontTheme.textTheme.bodyMedium!.copyWith(
                        color: IciciBankTheme.blueTextColor
                      ),)
                    ],
                  ),
                ),
                 Divider(
                        color: Colors.grey.withOpacity(0.3),
                        thickness: 1.5,
                      ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('We use this permission to identify your device and enable easier logins using your preferred login method.',textAlign: TextAlign.justify, style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 14.sp
                ),),
              )
              ],
            ),
          ),
          SizedBox(height: 15.h,),
          Container(
            decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(1, 1),
                  ),
                ],
            )
            ,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.sms_outlined,color: IciciBankTheme.accentColor,),
                      SizedBox(width: 10.w,),
                      Text('SMS',style: IciciBankFontTheme.textTheme.bodyMedium!.copyWith(
                        color: IciciBankTheme.blueTextColor
                      ),)
                    ],
                  ),
                ),
                 Divider(
                        color: Colors.grey.withOpacity(0.3),
                        thickness: 1.5,
                      ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('We use this permission',textAlign: TextAlign.justify,style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 14.sp
                ),),
                    Text('- to verify your mobile number when you activated the app.',textAlign: TextAlign.justify,style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 14.sp
                ),),
                    Text('- to identity your device on login for additional security.',textAlign: TextAlign.justify,style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 14.sp
                ),),
                    Text('- to autofill OTPs you receive via SMS on your device.',textAlign: TextAlign.justify,style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 14.sp
                ),)
                  ],
                ),
              )
              ],
            ),
          )
        ],
      ),
    );
  }
}