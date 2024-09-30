import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemOfCreditcard extends StatefulWidget {
  const ItemOfCreditcard({super.key});

  @override
  State<ItemOfCreditcard> createState() => _ItemOfCreditcardState();
}

class _ItemOfCreditcardState extends State<ItemOfCreditcard> {
  bool _isAccepted = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
        // padding: EdgeInsets.all(8.0), // Added padding for better spacing
        children: [
          textField(
            'Enter Mobile Number',
            'Please enter or select from contact book',
            icon: Icons.contact_page_outlined,
          ),
          textField('Name', 'Enter Name'),
          textField('Email Id', 'Enter Email Id'),
          textField('Your Credit Card Number', 'Enter Your Credit Card Number'),
          Row(
            children: [
              Checkbox(
                value: _isAccepted,
                onChanged: (bool? value) {
                  setState(() {
                    _isAccepted = value ?? false;
                  });
                },
              ),
              Text(
                'I hereby accept  ',
                style: IciciBankFontTheme.textTheme.labelMedium,
              ),
              GestureDetector(
                onTap: () {
                  // Implement navigation or action for Terms & Conditions
                },
                child: Text('Terms & Conditions',
                    style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                      color: IciciBankTheme.blueTextColor,
                      decoration: TextDecoration.underline,
                    )),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
            child: RichText(
              text: TextSpan(
                text:
                    'You can continue referring credit cards to your friends and earn 2000 ',
                style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                  fontSize: 14.sp,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: 'Rewards points*',
                    style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  const TextSpan(
                    text: ' on successful card setup.',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              '*Applicable on Gemstone Credit Cards only',
              style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                fontSize: 12.sp,
                color: Colors.red,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              onPressed:
                  () {}, // Disable the button if the checkbox is not checked
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(200.w, 50.h), // Adjust button size
                  backgroundColor: IciciBankTheme.blueTextColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r))),
              child: Text(
                'Submit',
                style: IciciBankFontTheme.textTheme.labelMedium!
                    .copyWith(color: IciciBankTheme.backgroundColor),
              ),
            ),
          )
        ]);
  }

  Widget textField(String label, String hintText, {IconData? icon}) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: IciciBankFontTheme.textTheme.labelMedium!
                .copyWith(color: IciciBankTheme.primaryColor),
          ),
          TextField(
            decoration: InputDecoration(
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: IciciBankTheme.lightGray,
                  width: 1,
                ),
              ),
              suffixIcon: icon != null
                  ? Icon(
                      icon,
                      color: IciciBankTheme.accentColor,
                    )
                  : null,
              hintText: hintText,
              hintStyle: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                fontSize: 14.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
