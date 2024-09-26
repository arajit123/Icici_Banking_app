import 'dart:math';

import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class PinVerificationPage extends StatefulWidget {
  const PinVerificationPage({super.key});

  @override
  State<PinVerificationPage> createState() => _PinVerificationPageState();
}

class _PinVerificationPageState extends State<PinVerificationPage> {
  TextEditingController _pinController = TextEditingController();
  final int _pinLength = 4; 
  void _verifyPin(String pin) {
    if (pin == "1234") {
      Navigator.pop(context, true);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Incorrect Pin')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const CommonAppbar(text: 'PIN Verification'),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40.h,),
              Text('Enter Your Pin to check Balance',style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                color: IciciBankTheme.primaryColor
              ),),
              SizedBox(
                height: 20.h,
              ),
              Pinput(length: _pinLength,
              controller: _pinController,
              obscureText: true,
              onCompleted: (pin)=>_verifyPin(pin),
              defaultPinTheme: PinTheme(
                width: 56.w,
                height: 56.h,
                textStyle: IciciBankFontTheme.textTheme.labelMedium,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color:IciciBankTheme.lightGray)
                )
              ),
              focusedPinTheme: PinTheme(
                width: 56.w,
                height: 56.h,
                textStyle: IciciBankFontTheme.textTheme.labelMedium,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: IciciBankTheme.blueTextColor)
                )
              ),
              errorPinTheme: PinTheme(
                width: 56.w,
                height: 56.h,
                textStyle: IciciBankFontTheme.textTheme.labelMedium,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: Colors.red)
                )
              ),
              ),
             
            ],
          ),
        ),
      ),
    ));
  }
}
