import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/screens/offers%20rewards/widgets/itemofpreapprovedloan.dart';
import 'package:banking_app/screens/offers%20rewards/widgets/itemofrewards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersRewardsPage extends StatefulWidget {
  const OffersRewardsPage({super.key});

  @override
  State<OffersRewardsPage> createState() => _OffersRewardsPageState();
}

class _OffersRewardsPageState extends State<OffersRewardsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  // Track the selected tab index

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        appBar: CommonAppbar(text: 'Offers and Rewards'),
        body: Column(
          children: [
            Container(
              height: 55.h,
              width: double.infinity,
              color: Colors.white,
              child: TabBar(
                // isScrollable: true,
                controller: _tabController,
                labelStyle: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight
                      .bold, // Set font weight to bold for the active tab
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight
                      .normal, // Set font weight to normal for inactive tabs
                ),
                labelColor: IciciBankTheme.blueTextColor,
                unselectedLabelColor: IciciBankTheme
                    .blueTextColor, // Different color for unselected labels
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: IciciBankTheme.blueTextColor,
                tabs: const [
                  FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Tab(text: 'Pre-Approved Loans')),
                  FittedBox(fit: BoxFit.scaleDown, child: Tab(text: 'Offers')),
                  FittedBox(fit: BoxFit.scaleDown, child: Tab(text: 'Rewards')),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  ItemOfPreApprovedLoanPage(),
                  Text('Hello'),
                  ItemofrewardsPage()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
