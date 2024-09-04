// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:banking_app/screens/Home/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomListTile extends StatelessWidget {
  String text;
  IconData icon;
   CustomListTile({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        ListTile(
          minTileHeight: 40,
          selectedTileColor: Colors.grey.withOpacity(0.2),
          // contentPadding: EdgeInsets.all(8),
          // tileColor: Colors.white,
          leading: Icon(
            icon,
            color: Colors.white.withOpacity(0.9),
          ),
          title: Text(
            text,
            style: TextStyle(color: Colors.white.withOpacity(0.9),fontSize: 14.sp),
          ),
        ),
        Divider(
          color: Colors.white.withOpacity(0.9),
          thickness: 0.5,
        ),
      ],
    );
  }
}
