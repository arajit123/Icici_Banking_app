import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardStatementPage extends StatelessWidget {
  const CardStatementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 10.h,),
        _buildListTile(
          title: 'Current Statement',
          icon: Icons.receipt_long,
         
        ),
        _buildListTile(
          title: 'Last Statement',
          icon: Icons.timelapse_sharp,
        ),
        _buildListTile(
          title: 'Past Statement',
          icon: Icons.data_usage_rounded,
        ),
        _buildListTile(
          title: 'Annual Statement',
          icon: Icons.calendar_month_outlined,
        ),
      ],
    );
  }

  Widget _buildListTile({
    required String title,
    required IconData icon,
   
  }) {
    return ListTile(
      minTileHeight: 40.h,
      title: Text(
        title,
        style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
            color: const Color.fromARGB(255, 4, 69, 129),
          ),
      ),
      leading: Icon(
        icon,
        color: IciciBankTheme.accentColor,size: 20
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 18,
        color: Colors.grey,
      ),
    );
  }
}
