import 'package:banking_app/constant/font_theme.dart';
import 'package:banking_app/screens/favourite/favourite_screen.dart';
import 'package:banking_app/screens/profile/profile.dart';
import 'package:banking_app/screens/track_application/track_application.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavItemOfHome extends StatelessWidget {
  const BottomNavItemOfHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProfilePage()));
          },
          child: Column(
            children: [
              Image.asset(
                'assets/icons/profile.png',
                height: 27.h,
                width: 27.w,
              ),
              Text(
                'Me',
                style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                    fontSize: 9,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FavouriteScreen()));
          },
          child: Column(
            children: [
              Image.asset(
                'assets/icons/bookmark.png',
                height: 23.h,
                width: 23.w,
              ),
              Text(
                'Favourites',
                style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                    fontSize: 9,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
             Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  TrackApplicationPage()));
          },
          child: Column(
            children: [
              Image.asset(
                'assets/icons/recruitment.png',
                height: 25.h,
                width: 25.w,
              ),
              Text(
                'Track Application',
                style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                    fontSize: 9,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Column(
          children: [
            Image.asset(
              'assets/icons/bulb.png',
              height: 27.h,
              width: 27.w,
            ),
            Text(
              'Services',
              style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                  fontSize: 9,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }
}
