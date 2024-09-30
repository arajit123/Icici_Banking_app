import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemOfImobile extends StatelessWidget {
  const ItemOfImobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       textField('Enter Mobile Number', "Please enter or select from contact book",icon: Icons.contact_page_outlined),
       textField('Name', 'Enter Name'),
       textField('Email ID', 'Enter Email ID'),
        Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: (){}, // Disable the button if the checkbox is not checked
                style: ElevatedButton.styleFrom(
                  
                  minimumSize: Size(double.infinity, 50.h), // Adjust button size
                  backgroundColor: IciciBankTheme.blueTextColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r)
                  )
                ),
                child:  Text('Submit',style:IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                  color: IciciBankTheme.backgroundColor
                ) ,),
              ),
            ),
      ],
    );
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