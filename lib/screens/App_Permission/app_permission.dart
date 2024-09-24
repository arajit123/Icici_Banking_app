import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/common_widgets/custom_tabbar.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:banking_app/screens/App_Permission/widgets/mandatory_item.dart';
import 'package:banking_app/screens/App_Permission/widgets/optional_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppPermissionPage extends StatelessWidget {
  const AppPermissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: const CommonAppbar(text: 'App Permission'),

        body: Column(
          children: [
            SizedBox(height: 20.h,),
            CustomTabbar(
              tabheight: 628.h,
              labelStyle:  IciciBankFontTheme.textTheme.labelMedium,tabTitles: const ['Mandatory','Optional'], tabViews: const [
              MandatoryItemPage(),OptionalItemPage(),
            ])
          ],
        ),
      ),
    );
  }
}