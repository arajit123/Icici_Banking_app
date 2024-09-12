import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:banking_app/screens/card_details/card_details.dart';
import 'package:banking_app/screens/track_application/track_application.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCardsPage extends StatelessWidget {
  const MyCardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CommonAppbar(text: 'Cards'),
        body: ListView(
          children: [
            SizedBox(
              height: 20.h,
            ),
            customcard(
                'ICICI Bank Credit Card',
                Column(
                  children: [
                    customListTile('1252418596369874', Icons.credit_card,
                        subtitle: 'Amazon Pay'),
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
                        .copyWith(color: IciciBankTheme.backgroundColor, fontSize: 30.sp),
                  ),
                  Text(
                    'Link Credit Card',
                    style: IciciBankFontTheme.textTheme.labelMedium!
                        .copyWith(color: IciciBankTheme.backgroundColor),
                  ),
                ],
              ),
            ),
                  ],
                ),
                Icons.credit_score_rounded, () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CardDetailsPage()));
            }),
            customcard(
                'Track My Application',
                Column(
                  children: [
                    customListTile(
                      'Track Your Card',
                      Icons.credit_card,
                    )
                  ],
                ),
                Icons.track_changes,
                () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  TrackApplicationPage()));
                }),
            customcard(
                'Expression Credit card',
                Column(
                  children: [
                    customListTile(
                      'Expression Card',
                      Icons.account_balance_wallet_outlined,
                    )
                  ],
                ),
                Icons.credit_card,
                () {}),
            customcard(
                'Refer a Credit Card',
                Column(
                  children: [
                    customListTile(
                      'Refer a Card',
                      Icons.add_card_rounded,
                    )
                  ],
                ),
                Icons.token_outlined,
                () {}),
          ],
        ),
      ),
    );
  }

  Widget customcard(
      String title, Widget child, IconData icon, VoidCallback ontap) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
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
            leading: Icon(icon),
            children: [child],
          ),
        ),
      ),
    );
  }

  Widget customListTile(String text, IconData icon, {String? subtitle}) {
    return Column(
      children: [
        ListTile(
          minVerticalPadding: 5.dg,
          minTileHeight: 20.h,
          title: Text(
            text,
            style: const TextStyle(color: Color.fromARGB(255, 4, 84, 154)),
          ),
          // Check if subtitle is provided, if so, add it to the ListTile
          subtitle: subtitle != null
              ? Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey[600]), // Optional styling
                )
              : null,
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
        // Divider(
        //   color: Colors.grey.withOpacity(0.6),
        //   thickness: 0.7,
        // ),
      ],
    );
  }
}
