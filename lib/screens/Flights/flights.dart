import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlightsPage extends StatelessWidget {
  const FlightsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: IciciBankTheme.lightGray,
        appBar: const CommonAppbar(text: 'Flights'),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 85.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: IciciBankTheme.backgroundColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('.',style: TextStyle(fontSize: 20.sp,color: IciciBankTheme.accentColor),),
                          SizedBox(
                            height: 30.h,
                            child: const VerticalDivider(
                              color: IciciBankTheme.accentColor,
                              thickness: 1,
                            ),
                          ),
                          const Icon(Icons.flight,size: 20 ,color: IciciBankTheme.accentColor),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(10.r)
                                  ),
                                  
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('DEL', style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                                      color: IciciBankTheme.blueTextColor
                                    )),
                                  )),
                                SizedBox(width: 8.w),
                                Text('New Delhi',style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                                  color: IciciBankTheme.textColor
                                ),),
                              ],
                            ),
                            const Divider(
                              color: IciciBankTheme.lightGray,
                              thickness: 1,
                            ),
                            Row(
                              children: [
                                Container(
                                   decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(10.r)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('BOM', style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                                        color: IciciBankTheme.blueTextColor
                                      )),
                                  )),
                                SizedBox(width: 8.w),
                                Text('Mumbai',style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                                  color: IciciBankTheme.textColor
                                ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        border: Border.all(
                          color: IciciBankTheme.accentColor,
                          width: 2
                        )
                      ),
                      
                      child: const Icon(Icons.sync_alt_outlined, color: IciciBankTheme.accentColor)),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 80.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: IciciBankTheme.backgroundColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Departure', style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                          
                          )),
                          Text('18 Sep',style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                            color: IciciBankTheme.primaryColor

                          ),),
                          Text('Wednesday',style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(

                          ),),
                        ],
                      ),
                      SizedBox(width: 60.w,),
                      const VerticalDivider(color: IciciBankTheme.lightGray),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Return', style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                          
                          )),
                          Text('Add Return', style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                            color: IciciBankTheme.primaryColor
                          
                          )),
                          Text('and save more',  style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                          
                          )),
                        ],
                      ),
                      Icon(Icons.add_circle_outline_rounded, color: IciciBankTheme.accentColor,size: 30.sp,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 80.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: IciciBankTheme.backgroundColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 15.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Class',style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                            color: IciciBankTheme.primaryColor
                          ),),
                          Row(
                            children: [
                              Text('Economy',style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(),),
                              SizedBox(width: 20.w,),
                              const Icon(Icons.keyboard_arrow_down_sharp,color: IciciBankTheme.lightGray,),
                            ],
                          ),
                        ],
                      ),
                      const VerticalDivider(color: IciciBankTheme.lightGray),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Traveller', style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                            color: IciciBankTheme.primaryColor
                          ),),
                          Row(
                            children: [
                              Text('1',style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(),),
                              SizedBox(width: 20.w,),
                              const Icon(Icons.keyboard_arrow_down_sharp,color: IciciBankTheme.lightGray,),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Checkbox(
                  activeColor: IciciBankTheme.accentColor,
                    value: false, onChanged: (bool? value) {}),
                  Text('Show only non-stop flights',style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                    color: IciciBankTheme.primaryColor
                  ),),
                ],
              ),
              SizedBox(height: 10.h),
              SizedBox(
                height: 50.h,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: IciciBankTheme.blueTextColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('Search Flights', style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                    color: IciciBankTheme.backgroundColor,fontSize: 15.sp
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
