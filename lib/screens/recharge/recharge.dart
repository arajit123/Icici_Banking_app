import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/screens/recharge/widgets/datacard_item.dart';
import 'package:banking_app/screens/recharge/widgets/mobile_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RechargePage extends StatefulWidget {
  const RechargePage({super.key});

  @override
  State<RechargePage> createState() => _RechargePageState();
}

class _RechargePageState extends State<RechargePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
 // Track the selected tab index

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
    return SafeArea(
      child: Scaffold(
        appBar: const CommonAppbar(text: 'Recharge'),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: Image.asset('assets/images/icici.png', fit: BoxFit.fill),
                ),
              ),
            ),
            Container(
              height: 55.h,
              width: double.infinity,
              color: Colors.grey.shade100.withOpacity(0.9),
              child: TabBar(
                controller: _tabController,
                labelStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold, // Set font weight to bold for the active tab
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal, // Set font weight to normal for inactive tabs
                ),
                labelColor: IciciBankTheme.accentColor,
                unselectedLabelColor: IciciBankTheme.accentColor, // Different color for unselected labels
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: IciciBankTheme.accentColor,
                tabs: const [
                  Tab(text: 'Mobile'),
                  Tab(text: 'Datacard'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children:const [
                 MobileItemPage(),
                  DataCardItemPage()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


