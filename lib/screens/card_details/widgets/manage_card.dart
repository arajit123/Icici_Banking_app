import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:banking_app/screens/card_details/widgets/manage%20card%20item/domestic_item.dart';
import 'package:banking_app/screens/card_details/widgets/manage%20card%20item/international_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ManageCardPage extends StatefulWidget {
  const ManageCardPage({super.key});

  @override
  State<ManageCardPage> createState() => _ManageCardPageState();
}

class _ManageCardPageState extends State<ManageCardPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Transaction Settings',
                style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                  color: const Color.fromARGB(255, 3, 61, 115),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.blue.withOpacity(0.2),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.refresh_rounded,
                        size: 18,
                        color: IciciBankTheme.blueTextColor,
                      ),
                      Text(
                        'Refresh',
                        style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                          color: IciciBankTheme.blueTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                  child: Container(
                    height: 40.h,
                    width: 330.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 1,
                          offset: const Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: TabBar(
                        controller: _tabController,
                        labelStyle: IciciBankFontTheme.textTheme.labelMedium,
                        tabs: const [
                          Tab(text: 'Domestic'),
                          Tab(text: 'International'),
                        ],
                        indicator: BoxDecoration(
                          color: IciciBankTheme.blueTextColor,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black54,
                        indicatorSize: TabBarIndicatorSize.tab,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 180.h, // Customizable height for TabBarView
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      DomesticItemPage(),
                      InternationalItemPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'More Options',
              style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                color: IciciBankTheme.accentColor,
              ),
            ),
          ),
          _buildListTile('Raise a Fraud Dispute', Icons.compass_calibration_outlined),
          _buildListTile('Manage Credit Limit', Icons.scatter_plot),
          _buildListTile('Get Expressions Card', Icons.credit_card),
          _buildListTile('Block Or Unblock Credit Card', Icons.credit_card_off_outlined),
          _buildListTile('Set Per-Transaction Limit', Icons.transcribe_outlined),
          _buildListTile('Convert to EMI', Icons.calendar_month_outlined),
          _buildListTile('EMI Summary', Icons.summarize_outlined),
          _buildListTile('View & Manage Billing Cycle', Icons.manage_history),
          _buildListTile('Update Email Id', Icons.mark_email_unread_outlined),
          _buildListTile('Link My Card', Icons.add_card_rounded),
        ],
      ),
    );
  }

  Widget _buildListTile(String title, IconData leadingIcon) {
    return ListTile(
      title: Text(title,style: IciciBankFontTheme.textTheme.labelLarge,),
      leading: Icon(leadingIcon,color: IciciBankTheme.blueTextColor,size: 22),
      trailing: const Icon(Icons.arrow_forward_ios_rounded,size: 15,color: Colors.grey,),
    );
  }
}
