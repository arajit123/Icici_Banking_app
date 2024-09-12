import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileItemPage extends StatefulWidget {
  const MobileItemPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MobileItemPageState createState() => _MobileItemPageState();
}

class _MobileItemPageState extends State<MobileItemPage> {
  // Controllers for the text fields
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _operatorController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  // Track whether all fields are filled
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    // Add listeners to check for changes in text fields
    _mobileNumberController.addListener(_checkFields);
    _operatorController.addListener(_checkFields);
    _amountController.addListener(_checkFields);
  }

  // Function to check whether all fields are filled
  void _checkFields() {
    setState(() {
      _isButtonEnabled = _mobileNumberController.text.isNotEmpty &&
          _operatorController.text.isNotEmpty &&
          _amountController.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    // Dispose controllers when the widget is destroyed
    _mobileNumberController.dispose();
    _operatorController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: _mobileNumberController,
              keyboardType: TextInputType.phone,
              maxLength: 10,
              decoration: InputDecoration(
                labelStyle: IciciBankFontTheme.textTheme.displaySmall!
                    .copyWith(fontSize: 16.sp),
                labelText: "Enter Number",
                hintStyle: IciciBankFontTheme.textTheme.displaySmall!
                    .copyWith(fontSize: 14.sp),
                hintText: 'Enter 10 Digit Mobile Number',
                suffixIcon: const Icon(
                  Icons.contact_page_outlined,
                  color: IciciBankTheme.accentColor,
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: IciciBankTheme.lightGray,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: IciciBankTheme.accentColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            TextField(
              controller: _operatorController,
              decoration: InputDecoration(
                labelStyle: IciciBankFontTheme.textTheme.displaySmall!
                    .copyWith(fontSize: 16.sp),
                hintStyle: IciciBankFontTheme.textTheme.displaySmall!
                    .copyWith(fontSize: 14.sp),
                labelText: 'Select Operator & Circle',
                hintText: 'Select Operator & Circle',
                suffixIcon: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: IciciBankTheme.accentColor,
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: IciciBankTheme.lightGray,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: IciciBankTheme.accentColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            TextField(
              controller: _amountController,
              
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                // prefix: Icon(Icons.currency_rupee_rounded,size: 14,),
                prefixStyle:  IciciBankFontTheme.textTheme.displaySmall!
                    .copyWith(fontSize: 16.sp),
                prefixText: '₹',
                labelStyle: IciciBankFontTheme.textTheme.displaySmall!
                    .copyWith(fontSize: 16.sp),
                hintStyle: IciciBankFontTheme.textTheme.displaySmall!
                    .copyWith(fontSize: 14.sp),
                labelText: 'Enter Amount',
                hintText: 'Enter Amount',
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 15.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        color: IciciBankTheme.lightGray,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Center(
                      child: Text('Browse Plans',
                          style: IciciBankFontTheme.textTheme.displaySmall!
                              .copyWith(fontSize: 11.sp)),
                    ),
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: IciciBankTheme.lightGray,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: IciciBankTheme.accentColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            SizedBox(
              width: double.infinity,
              height: 50.h,
              child: ElevatedButton(
                onPressed: _isButtonEnabled
                    ? () {
                        // Handle button press action here
                      }
                    : null, // Disable the button if not enabled
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isButtonEnabled
                      ? IciciBankTheme.blueTextColor
                      : Colors.grey, // Change color based on state
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                child: Text(
                  'Proceed to Recharge',
                  style: IciciBankFontTheme.textTheme.displaySmall!.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: IciciBankTheme.backgroundColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
