import 'package:banking_app/screens/Chnage_login_pin/change_login_pin.dart';
import 'package:banking_app/common_widgets/custom_list_tile.dart';
import 'package:banking_app/screens/App_Permission/app_permission.dart';
import 'package:banking_app/screens/calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: unused_element
class SliderView extends StatelessWidget {
  final Function(String)? onItemClick;

  const SliderView({super.key, this.onItemClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.topCenter,
      // padding: const EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border(
              top: BorderSide(
                  width: 0.5, color: Colors.white.withOpacity(0.9)))),
      child: Column(
        // padding: EdgeInsets.zero,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Divider(
          //   color: Colors.white.withOpacity(0.9),
          //   thickness: 0.5,
          // ),
          SizedBox(
            height: 7.h,
          ),
          CustomListTile(
            text: 'Home',
            icon: Icons.home_outlined,
            onTap: () {},
          ),
          CustomListTile(
            text: 'Apply Now',
            icon: Icons.app_registration_rounded,
            onTap: () {},
          ),
          CustomListTile(
            text: 'Contact Us',
            icon: Icons.contact_mail_outlined,
            onTap: () {},
          ),
          CustomListTile(
            text: 'Calculator',
            icon: Icons.calculate_outlined,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CalculatorPage()));
              // Navigator.pop(context);
            },
          ),
          CustomListTile(
            text: 'Receipts',
            icon: Icons.receipt_long_rounded,
            onTap: () {},
          ),
          CustomListTile(
            text: 'Safety Tips',
            icon: Icons.home_outlined,
            onTap: () {},
          ),
          CustomListTile(
            text: 'Change Login PIN',
            icon: Icons.privacy_tip_outlined,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChangeLoginPin()));
            },
          ),
          CustomListTile(
            text: 'Disable Fingerprint',
            icon: Icons.fingerprint_sharp,
            onTap: () {},
          ),
          CustomListTile(
            text: 'App Permissions',
            icon: Icons.settings_applications_outlined,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AppPermissionPage()));
            },
          ),
          CustomListTile(
            text: 'Rate Us',
            icon: Icons.star_border_rounded,
            onTap: () {},
          ),
          CustomListTile(
            text: 'LogOut',
            icon: Icons.power_settings_new_sharp,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
