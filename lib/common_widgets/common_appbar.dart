import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String text;

  const CommonAppbar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: const Color(0xFFf6711d),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Text(
        text,
        style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.help_outline, color: Colors.white),
          onPressed: () {
            helpPage(context);
          },
        ),
      ],
    );
  }

  void helpPage(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          titlePadding: EdgeInsets.zero,
          // contentPadding: EdgeInsets.zero,
          
          title: Container(
            padding: const EdgeInsets.all(8),
            color: IciciBankTheme.accentColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  'Help',
                  style: IciciBankFontTheme.textTheme.bodyMedium!.copyWith(
                    color: IciciBankTheme.backgroundColor,
                    fontSize: 16.sp
                  )
                ),
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
          content: SizedBox(
            
            // height: 200.h
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    'Your linked Credit cards related services are available in this section.',style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                      color:IciciBankTheme.textColor
                    ),
                  ),
                   SizedBox(height: 10.h),
                   Text(
                    '1. If you do not find any of your accounts here, please ensure they are linked through a single relationship with the Bank. To link a Card or Loan account, please use the Link Accounts option available under the Services menu.',style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                      color: IciciBankTheme.textColor
                    ),
                  ),
                   SizedBox(height: 10.h),
                   Text(
                    '2. You can use various services related to cards & loans by using the More Options tab available on internal screens.',style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                      color: IciciBankTheme.textColor
                    ),
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      text: 'For any further queries, please ',
                      style:IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                        color: IciciBankTheme.textColor
                      ),
                      children: [
                        TextSpan(
                          text: 'Contact Us',
                          
                          style:  IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                            color: IciciBankTheme.blueTextColor,
                            decoration: TextDecoration.underline
                          )
                          
                          // Add your click functionality here
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: IciciBankTheme.blueTextColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  
                ),
                minimumSize: Size(double.infinity, 50.h)
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child:  Text('OK',style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                color: IciciBankTheme.backgroundColor
                ,fontSize: 16.sp
              ),),
            ),
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
