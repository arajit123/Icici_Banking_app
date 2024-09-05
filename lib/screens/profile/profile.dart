import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CommonAppbar(text: 'Me'),
        body: Column(
          children: [
            // Container(
            //   height: 60.h,
            //   decoration: const BoxDecoration(color: Color(0xFFf6711d)),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Padding(
            //         padding: EdgeInsets.all(8.w), // Use .w for padding scaling
            //         child: GestureDetector(
            //           onTap: () {
            //             Navigator.pop(context);
            //           },
            //           child: const Icon(
            //             Icons.arrow_back_ios,
            //             color: Colors.white,
            //             size: 23,
            //           ),
            //         ),
            //       ),
            //       SizedBox(
            //         width: 120.w,
            //       ), // Automatically adjust space to center the text
            //       Center(
            //         child: Text(
            //           'Me',
            //           style: IciciBankFontTheme.textTheme.bodySmall!
            //               .copyWith(color: Colors.white, fontSize: 22.sp),
            //         ),
            //       ),
            //       const Spacer(), // Add Spacer to push text to the center
            //     ],
            //   ),
            // ),
            Expanded(
              child: ListView(
                // physics:BouncingScrollPhysics(),
                // padding: EdgeInsets.all(16.w), // Padding for ListView items
                children: [
                  SizedBox(height: 10.h,),
                  Center(
                    child: Container(
                      height: 80.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: const Offset(1, 1),
                          )
                        ],
                        // color: Colors.amber,
                      ),
                      child: const Icon(Icons.person, size: 50),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Center(
                      child: Text('ARAJIT GARAI',
                          style:
                              IciciBankFontTheme.textTheme.bodySmall!.copyWith(
                            color: Colors.black54,
                          ))),
                  SizedBox(
                    height: 15.h,
                  ),
                  customColumn(Icons.person, 'My Relationships'),
                  customColumn(Icons.person, 'Change Login PIN'),
                  customColumn(Icons.fingerprint, 'FingerPrint'),
                  customColumn(Icons.desktop_windows_sharp, 'Login to Internet Banking'),
                  customColumn(Icons.person_add_alt_outlined, 'Refer a friend'),
                  customColumn(Icons.help_outline,'Help'),
                  customColumn(Icons.note_alt_outlined, 'Feedback'),
                  customColumn(Icons.verified_outlined, 'App version')
                  // Add more widgets here for the profile page content
                ],
              ),
            ),
            Container(
              height: 55.h,
              decoration: const BoxDecoration(color: Color(0xFFf6711d)),
              child: Center(
                child: Text(
                  'Log Out',
                  style: IciciBankFontTheme.textTheme.bodySmall!
                      .copyWith(color: Colors.white, fontSize: 22.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customColumn(IconData icon,String text) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(icon, size: 30.sp),
        ),
        SizedBox(width: 20.w), // Add some spacing between the icon and text
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.h,
              ),
              Text(
               text ,
                style: IciciBankFontTheme.textTheme.bodySmall!
                    .copyWith(color: Colors.black),
              ),
              SizedBox(height: 8.h), // Space between text and divider
              Divider(
                color: Colors.grey.withOpacity(0.6),
                thickness: 0.7,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
