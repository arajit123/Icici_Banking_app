import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemofmybookingPage extends StatelessWidget {
  const ItemofmybookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
            text: TextSpan(
              text: 'Note: ',
              style:IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                color: IciciBankTheme.darkGray
              ),
              children: [
                TextSpan(
                  text:
                      'Tickets booked from iMobile can be viewed/cancelled only from iMobile.',
                  style:IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                    color: IciciBankTheme.textColor
                  )
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 100.h),
        Center(
          child: Text(
            'No Booking Found',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}
