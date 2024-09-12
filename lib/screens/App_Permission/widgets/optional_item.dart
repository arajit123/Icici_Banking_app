import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OptionalItemPage extends StatefulWidget {
  const OptionalItemPage({super.key});

  @override
  State<OptionalItemPage> createState() => _OptionalItemPageState();
}

class _OptionalItemPageState extends State<OptionalItemPage> {
  // Create a list to manage the state of each switch individually
  List<bool> switchValues = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
      child: ListView(
        children: [
          _buildPermissionContainer(
            index: 0,
            icon: Icons.camera_alt_outlined,
            title: 'Camera',
            description: text(
              'We use your camera to scan UPI QR codes to make instant UPI Payments',
            ),
          ),
          SizedBox(height: 15.h),
          _buildPermissionContainer(
            index: 1,
            icon: Icons.mic_none_sharp,
            title: 'Microphone',
            description: text(
              'We use your microphone to enable voice search in the iPAL section of the app.',
            ),
          ),
          SizedBox(height: 15.h),
          _buildPermissionContainer(
            index: 2,
            icon: Icons.contact_page_outlined,
            title: 'Contact',
            description: text(
              'We access your contact book to show you the list of your contacts that you can make a recharge for.',
            ),
          ),
          SizedBox(height: 15.h),
          _buildPermissionContainer(
            index: 3,
            icon: Icons.calendar_month_outlined,
            title: 'Calendar',
            description: text(
              'We use your calendar permissions for storing bill payment reminders locally in the phone calendar.',
            ),
          ),
          SizedBox(height: 15.h),
          _buildPermissionContainer(
            index: 4,
            icon: Icons.location_on_outlined,
            title: 'Location',
            description: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text('We use your location information to'),
                SizedBox(height: 5.h),
                text(
                    '- Discover and suggest airports and hotels near you in the Travel bookings section of the app'),
                text(
                    '- Facilitate optimization of UPI Payments architecture as per the regulatory guidelines of NPCI'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget text(String text) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: IciciBankFontTheme.textTheme.labelSmall!
          .copyWith(color: Colors.black.withOpacity(0.8), fontSize: 14.sp),
    );
  }

  // Reusable method to build each permission container
  Widget _buildPermissionContainer({
    required int index,
    required IconData icon,
    required String title,
    required Widget description,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          ListTile(
            minTileHeight: 40.h,
            title: Text(
              title,
              style: IciciBankFontTheme.textTheme.bodyMedium!.copyWith(
                color: IciciBankTheme.blueTextColor,
              ),
            ),
            leading: Icon(icon, color: IciciBankTheme.accentColor),
            trailing: Transform.scale(
              scale: 0.8, // Reduce the size of the switch
              child: Switch(
                activeColor: IciciBankTheme.accentColor,
                inactiveTrackColor: Colors.grey,
                value: switchValues[index], // Track switch value based on index
                onChanged: (value) {
                  setState(() {
                    switchValues[index] = value;
                  });
                },
              ),
            ),
          ),
          Divider(
            color: Colors.grey.withOpacity(0.3),
            thickness: 1.5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: description,
          ),
        ],
      ),
    );
  }
}
