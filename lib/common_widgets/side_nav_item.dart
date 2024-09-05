import 'package:banking_app/common_widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

// ignore: unused_element
class SliderView extends StatelessWidget {
  final Function(String)? onItemClick;

  const SliderView({super.key, this.onItemClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      // padding: const EdgeInsets.only(top: 30),
      child: Column(
        // padding: EdgeInsets.zero,
        children: [
          Divider(
          color: Colors.white.withOpacity(0.9),
          thickness: 0.5,
        ),
         CustomListTile(text: 'Home', icon: Icons.home_outlined),
         CustomListTile(text: 'Apply Now', icon: Icons.app_registration_rounded),
         CustomListTile(text: 'Contact Us', icon: Icons.contact_mail_outlined),
         CustomListTile(text: 'Calculator', icon: Icons.calculate_outlined),
         CustomListTile(text: 'Receipts', icon: Icons.receipt_long_rounded),
         CustomListTile(text: 'Safety Tips', icon: Icons.home_outlined),
         CustomListTile(text: 'Change Login PIN', icon: Icons.privacy_tip_outlined),
         CustomListTile(text: 'Disable Fingerprint', icon: Icons.fingerprint_sharp),
         CustomListTile(text: 'App Permissions', icon: Icons.settings_applications_outlined),
         CustomListTile(text: 'Rate Us', icon: Icons.star_border_rounded),
         CustomListTile(text: 'LogOut', icon: Icons.power_settings_new_sharp),
    
    
    
    
    
          
         
        ],
      ),
    );
  }
}