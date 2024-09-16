import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoansPage extends StatelessWidget {
  const LoansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CommonAppbar(text: "Loans"),
        body: Column(
          children: [
            customcard(
              "Loan Account", 
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'To link your existing Loan account. ',
                      style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                        fontSize: 13.sp,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'Click Here',
                          style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                            fontSize: 13.sp,
                            color: IciciBankTheme.blueTextColor,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Handle Click Here action
                              print('Clicked!');
                            },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Text(
                    'You do not have any Loan accounts.',
                    style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                      fontSize: 13.sp,
                    ),
                  ),
                  Container(
                    height: 50.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.r),
                        bottomRight: Radius.circular(10.r),
                      ),
                      color: IciciBankTheme.blueTextColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Apply Now',
                          style: IciciBankFontTheme.textTheme.labelMedium!
                              .copyWith(color: IciciBankTheme.backgroundColor),
                        ),
                        SizedBox(width: 15.w),
                        Text(
                          '|',
                          style: IciciBankFontTheme.textTheme.labelLarge!
                              .copyWith(
                                color: IciciBankTheme.backgroundColor,
                                fontSize: 30.sp,
                              ),
                        ),
                        Text(
                          'Track New Loan',
                          style: IciciBankFontTheme.textTheme.labelMedium!
                              .copyWith(color: IciciBankTheme.backgroundColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Icons.edit_calendar_outlined,
            ),
            customcard("Gold Loan", Column(
              children: [
                Text('You do not have any Gold Loan',style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                  fontSize: 13.sp
                ),),
                  Container(
              height: 50.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.r),
                  bottomRight: Radius.circular(10.r),
                ),
                color: IciciBankTheme.blueTextColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Apply Now',
                    style: IciciBankFontTheme.textTheme.labelMedium!
                        .copyWith(color: IciciBankTheme.backgroundColor),
                  ),
                  // SizedBox(width: 15.w),
                  // Text(
                  //   '|',
                  //   style: IciciBankFontTheme.textTheme.labelLarge!
                  //       .copyWith(color: IciciBankTheme.backgroundColor, fontSize: 30.sp),
                  // ),
                  // Text(
                  //   'Link Credit Card',
                  //   style: IciciBankFontTheme.textTheme.labelMedium!
                  //       .copyWith(color: IciciBankTheme.backgroundColor),
                  // ),
                ],
              ),
            ),

              ],
            ), Icons.local_atm_outlined)
          ],
        ),
      ),
    );
  }
  Widget customcard(String title, Widget child,IconData icon) {
    return Padding(
      padding: EdgeInsets.all(8.r),
      child: Card(
        elevation: 3,
        child: ExpansionTile(
          // tilePadding: EdgeInsets.all(1.dg),
          // childrenPadding: EdgeInsets.all(50.r),
          title: Text(title),
          iconColor: Colors.grey,
          collapsedIconColor: Colors.white,
          collapsedBackgroundColor: const Color(0xFFf6711d),
          backgroundColor: Colors.white,
          textColor: IciciBankTheme.accentColor,
          collapsedTextColor: Colors.white,
          leading:  Icon(icon),
          children: [child],
        ),
      ),
    );
  }

  Widget customListtile(String text, IconData icon) {
    return Column(
      children: [
        ListTile(
          minVerticalPadding: 5.dg,
          minTileHeight: 20.h,
          title: Text(
            text,
            style: const TextStyle(color: Color.fromARGB(255, 4, 84, 154)),
          ),
          leading: Icon(
            icon,
            color: const Color.fromARGB(255, 4, 84, 154),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: const Color.fromARGB(255, 4, 84, 154),
            size: 16.sp,
          ),
        ),
        Divider(
          color: Colors.grey.withOpacity(0.6),
          thickness: 0.7,
        ),
      ],
    );
  }
}