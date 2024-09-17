import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/screens/rail/widgets/itemofbooktickets.dart';
import 'package:banking_app/screens/rail/widgets/itemofcheckpnr.dart';
import 'package:banking_app/screens/rail/widgets/itemofmybooking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RailScreen extends StatefulWidget {
  const RailScreen({super.key});

  @override
  State<RailScreen> createState() => _RailScreenState();
}

class _RailScreenState extends State<RailScreen>with SingleTickerProviderStateMixin {
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
        appBar:CommonAppbar(text: 'Rail Ticketing'),
        body: Column(
          children: [
            Container(
              height: 55.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      offset: Offset(0, 2)
                    )
                  ]
              ),
              
              child: TabBar(
                // isScrollable: true,
                controller: _tabController,
                labelStyle: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight
                      .bold, // Set font weight to bold for the active tab
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight
                      .normal, // Set font weight to normal for inactive tabs
                ),
                labelColor: IciciBankTheme.accentColor,
                unselectedLabelColor: Colors.grey, // Different color for unselected labels
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: IciciBankTheme.accentColor,
                tabs: const [
                  FittedBox(
                      // fit: BoxFit.scaleDown,
                      child: Tab(text: 'Book Tickets')),
                  FittedBox(fit: BoxFit.scaleDown, child: Tab(text: 'Check PNR')),
                  FittedBox(fit: BoxFit.scaleDown, child: Tab(text: 'My Bookings')),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  ItemofbookticketsPage(),
                  ItemofcheckpnrPage(),
                  ItemofmybookingPage()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}