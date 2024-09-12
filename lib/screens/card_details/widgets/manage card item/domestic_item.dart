import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DomesticItemPage extends StatefulWidget {
  const DomesticItemPage({super.key});

  @override
  State<DomesticItemPage> createState() => _DomesticItemPageState();
}

class _DomesticItemPageState extends State<DomesticItemPage> {
  // Separate boolean values for each switch
  bool isATMWithdrawal = false;
  bool isMerchantOutlet = false;
  bool isOnline = false;
  bool isTapAndPay = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ATM Withdrawal switch
        ListTile(
          minTileHeight: 45.h,
          title:  Text("ATM Withdrawal",style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
            color:  const Color.fromARGB(255, 3, 61, 115),
          ),),
          leading: const Icon(Icons.credit_card,color: IciciBankTheme.accentColor,size: 20,),
          trailing: SizedBox(
            width: 100.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Add space between elements
              children: [
                const Text('Off'),
                Transform.scale(
                  scale: 0.7,
                  child: Switch(
                    value: isATMWithdrawal,
                    activeColor: IciciBankTheme.accentColor,
                    inactiveTrackColor: Colors.grey,
                    onChanged: (value) {
                      setState(() {
                        isATMWithdrawal = value;
                      });
                    },
                  ),
                ),
                const Text("On"),
              ],
            ),
          ),
        ),
        // Merchant Outlet switch
        ListTile(
          minTileHeight: 45.h,
          title:  Text("Merchant Outlet",style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
            color:  const Color.fromARGB(255, 3, 61, 115),
          ),),
          leading: const Icon(Icons.add_business_outlined,color: IciciBankTheme.accentColor,size: 20),
          trailing: SizedBox(
            width: 100.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Off'),
                Transform.scale(
                  scale: 0.7,
                  child: Switch(
                     activeColor: IciciBankTheme.accentColor,
                    inactiveTrackColor: Colors.grey,
                    value: isMerchantOutlet,
                    onChanged: (value) {
                      setState(() {
                        isMerchantOutlet = value;
                      });
                    },
                  ),
                ),
                const Text("On"),
              ],
            ),
          ),
        ),
        // Online switch
        ListTile(
          minTileHeight: 45.h,
          title:  Text("Online",style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
            color:  const Color.fromARGB(255, 3, 61, 115),
          ),),
          leading: const Icon(Icons.qr_code_scanner_sharp,color: IciciBankTheme.accentColor,size: 20),
          trailing: SizedBox(
            width: 100.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Off'),
                Transform.scale(
                  scale: 0.7,
                  child: Switch(
                     activeColor: IciciBankTheme.accentColor,
                    inactiveTrackColor: Colors.grey,
                    value: isOnline,
                    onChanged: (value) {
                      setState(() {
                        isOnline = value;
                      });
                    },
                  ),
                ),
                const Text("On"),
              ],
            ),
          ),
        ),
        // Tap and Pay switch
        ListTile(
          minTileHeight: 45.h,
          title:  Text("Tap and Pay",style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
            color:  const Color.fromARGB(255, 3, 61, 115),
          ),),
          leading: const Icon(Icons.tap_and_play_outlined,color: IciciBankTheme.accentColor,size: 20),
          trailing: SizedBox(
            width: 100.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Off'),
                Transform.scale(
                  scale: 0.7,
                  child: Switch(
                     activeColor: IciciBankTheme.accentColor,
                    inactiveTrackColor: Colors.grey,
                    value: isTapAndPay,
                    onChanged: (value) {
                      setState(() {
                        isTapAndPay = value;
                      });
                    },
                  ),
                ),
                const Text("On"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
