import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BillPaymentItemPage extends StatefulWidget {
  const BillPaymentItemPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BillPaymentItemPageState createState() => _BillPaymentItemPageState();
}

class _BillPaymentItemPageState extends State<BillPaymentItemPage> {
  bool _isExpanded = false;

  // Method to create a grid item
  Widget _buildGridItem(String iconPath, String label, {Color? color, Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            color: color,
            height: 30.h,
            width: 30.w,
          ),
          SizedBox(height: 8.h),
          Flexible(
            child: Text(
              label,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: IciciBankFontTheme.textTheme.displaySmall!.copyWith(fontSize: 12.sp),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Grid items list
    final List<Widget> gridItems = [
      _buildGridItem('assets/icons/prepaid.png', 'Postpaid', color: IciciBankTheme.accentColor),
      _buildGridItem('assets/icons/prepayment.png', 'Prepaid / Recharge'),
      _buildGridItem('assets/icons/electrical-energy.png', 'Electricity'),
      _buildGridItem('assets/icons/satelite.png', 'DTH'),
      _buildGridItem('assets/icons/toll.png', 'ICICI FASTag'),
      _buildGridItem('assets/icons/t.png', 'Other FASTag'),
      _buildGridItem('assets/icons/pipes.png', 'Piped Gas'),
      _buildGridItem('assets/icons/gas-cylinder.png', 'LPG Cylinder'),
      _buildGridItem('assets/icons/telephone.png', 'Landline / Broadband'),
      _buildGridItem('assets/icons/loan.png', 'Loan Repayment'),
      _buildGridItem('assets/icons/mortarboard.png', 'Education'),
      _buildGridItem('assets/icons/health.png', 'Insurance'),
      _buildGridItem('assets/icons/faucet.png', 'Water'),
      _buildGridItem('assets/icons/tv.png', 'Cable TV'),
      _buildGridItem('assets/icons/tax.png', 'Tax'),
      _buildGridItem('assets/icons/hygiene.png', 'ICICI Lombard'),
      _buildGridItem('assets/icons/google-play.png', 'Google Play'),
      _buildGridItem('assets/icons/bill.png', 'Others'),
    ];

    // Determine items to display based on the expanded state
    final List<Widget> visibleGridItems = _isExpanded ? gridItems : gridItems.sublist(0, 10);

    // Add the "Show More" / "Show Less" item
    visibleGridItems.add(
      _buildGridItem(
        _isExpanded ? 'assets/icons/ellipsis.png' : 'assets/icons/e.png',
        _isExpanded ? 'Show Less' : 'Show More',
        color: IciciBankTheme.accentColor,
        onTap: () {
          setState(() {
            _isExpanded = !_isExpanded;
          });
        },
      ),
    );

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              mainAxisExtent: 80,
            ),
            itemCount: visibleGridItems.length,
            itemBuilder: (context, index) => visibleGridItems[index],
          ),
        ),
        Container(
          height: 50.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.access_time,
                  size: 20,
                  color: IciciBankTheme.blueTextColor,
                ),
                SizedBox(width: 8.w),
                Text(
                  'Due Bills and Recent Payments',
                  style: IciciBankFontTheme.textTheme.displaySmall!
                      .copyWith(fontSize: 14.sp),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          "No Recent Payments available",
          style: IciciBankFontTheme.textTheme.displaySmall!
              .copyWith(fontSize: 12.sp),
        ),
        const Spacer(),
        Container(
          height: 55.h,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: IciciBankTheme.blueTextColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'ADD REMINDER',
                style: IciciBankFontTheme.textTheme.labelMedium!
                    .copyWith(color: IciciBankTheme.backgroundColor),
              ),
              Text(
                '|',
                style: IciciBankFontTheme.textTheme.labelLarge!
                    .copyWith(
                      color: IciciBankTheme.backgroundColor,
                      fontSize: 30.sp,
                    ),
              ),
              Text(
                'ADD BILLER',
                style: IciciBankFontTheme.textTheme.labelMedium!
                    .copyWith(color: IciciBankTheme.backgroundColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
