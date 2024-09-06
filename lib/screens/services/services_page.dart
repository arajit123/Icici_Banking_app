import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100.withOpacity(0.9),
        appBar: const CommonAppbar(text: 'Services'),
        body: ListView(
          children: [
            SizedBox(
              height: 20.h,
            ),
            customcard(
              "Accounts Services",
              
              Column(
                children: [
                  customListtile('Add/Manage Billers', Icons.person_add_alt),
                  customListtile('Link Accounts', Icons.library_add_check_outlined),
                  customListtile('View Reward Points', Icons.card_giftcard_outlined),
                  customListtile('Request to Re-dispatch Deliverables', Icons.device_hub_outlined),
                  customListtile('IT Certificate for Closed Home Loan', Icons.important_devices_sharp),
                ],
              ),
              Icons.miscellaneous_services_sharp
            ),
            customcard(
              "Track Application/Service",
              Column(
                children: [
                  customListtile('Account Details', Icons.account_balance_wallet_outlined),
                ],
              ),
              Icons.transgender_sharp
            ),
            customcard(
              "Cards Services",
              Column(
                children: [
                  customListtile('Generate Credit Card Pin', Icons.lock_person_outlined),
                  customListtile('Upgrade Credit Card', Icons.curtains_rounded),
                  customListtile('Block or Unblock Credit Card', Icons.signal_wifi_4_bar_lock_outlined),
                  customListtile('Track My Application', Icons.track_changes)
                ],
              ),
              Icons.credit_card
            ),
            customcard(
              "Check Status",
              Column(
                children: [
                  customListtile('Track Deliverables', Icons.details_rounded),
                  customListtile('Track Service Requests', Icons.design_services_outlined),
                  
                ],
              ),
              Icons.stairs_outlined
            ),
            customcard(
              "Tools",
              Column(
                children: [
                  customListtile('Change Login Pin', Icons.lock_clock_outlined),
                  customListtile('Refer a friend', Icons.person_add_alt),
                  customListtile('Refer a Credit Card', Icons.add_card_rounded),
                  
                ],
              ),
              Icons.token_outlined
            ),
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
