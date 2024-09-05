import 'package:another_stepper/another_stepper.dart';
import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class TrackApplicationPage extends StatelessWidget {
   TrackApplicationPage({super.key});
  List<StepperData> stepperData=[
    StepperData(
      title: StepperText('Application Initiated',textStyle: IciciBankFontTheme.textTheme.labelSmall!.copyWith(fontSize: 11.sp,color: IciciBankTheme.accentColor)),
      iconWidget: Container(
        padding: EdgeInsets.all(8.dg),
        decoration: BoxDecoration(
          color:const Color(0xFFf6711d),
          borderRadius: BorderRadius.all(Radius.circular(30.r))
        ),
        child: const Icon(Icons.settings,color: Colors.white,),
      )
    ),
     StepperData(
      title: StepperText('Appointment',textStyle: IciciBankFontTheme.textTheme.labelSmall!.copyWith(fontSize:12.sp)),
      iconWidget: Container(
        padding: EdgeInsets.all(8.dg),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(30.r))
        ),
        child: const Icon(Icons.settings,color: Colors.grey,),
      )
    ),
     StepperData(
      title: StepperText('Document Verification',textStyle: IciciBankFontTheme.textTheme.labelSmall!.copyWith(fontSize: 11.sp)),
      iconWidget: Container(
        padding: EdgeInsets.all(8.dg),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(30.r))
        ),
        child: const Icon(Icons.settings,color: Colors.grey,),
      )
    ),
     StepperData(
      title: StepperText('Application Procesing',textStyle: IciciBankFontTheme.textTheme.labelSmall!.copyWith(fontSize: 11.sp)),
      iconWidget: Container(
        padding: EdgeInsets.all(8.dg),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(30.r))
        ),
        child: const Icon(Icons.settings,color: Colors.grey,),
      )
    ),
     StepperData(
      title: StepperText('Card Delivery',textStyle: IciciBankFontTheme.textTheme.labelSmall!.copyWith(fontSize: 11.sp)),
      iconWidget: Container(
        padding: EdgeInsets.all(8.dg),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(30.r))
        ),
        child: const Icon(Icons.settings,color: Colors.grey,),
      )
    )

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CommonAppbar(text: 'Track Your Credit Card'),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Application Number',
              style: IciciBankFontTheme.textTheme.bodyLarge!.copyWith(),
            ),
            // Spacer(),
            SizedBox(
              height: 230.h,
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Container(
                height: 260.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black.withOpacity(0.3),
                    width: 1.5
                  )
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.receipt_long_sharp,color: IciciBankTheme.accentColor,),
                          SizedBox(width: 10.w,),
                          Center(child: Text('Application Initiated',style: IciciBankFontTheme.textTheme.bodyMedium!.copyWith(color:  const Color.fromARGB(255, 4, 84, 154)),)),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black.withOpacity(0.3),
                      thickness: 1.5,
                    ),
                    SizedBox(height: 15.h,),
                    AnotherStepper(
                      inActiveBarColor: Colors.grey,
                      stepperList: stepperData, stepperDirection: Axis.horizontal,iconHeight: 40.h,iconWidth: 40.w,),
                      SizedBox(height: 50.h,),
                      Text('You do not have any pending credit card',style: IciciBankFontTheme.textTheme.bodyMedium!.copyWith(color: IciciBankTheme.accentColor),),
                      Text('applications',style: IciciBankFontTheme.textTheme.bodyMedium!.copyWith(color: IciciBankTheme.accentColor),)
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
