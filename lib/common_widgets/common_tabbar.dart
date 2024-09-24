import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonTabBar extends StatelessWidget {
  final TabController tabController;
  final List<Tab> tabs;
  final List<Widget> tabViews;
  final Color activeColor;
  final Color inactiveColor;
  final Color backgroundColor;
  final Color indicatorColor;

  const CommonTabBar({
    super.key,
    required this.tabController,
    required this.tabs,
    required this.tabViews,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.grey,
    this.backgroundColor = Colors.white,
    this.indicatorColor = Colors.blue,
  }) : assert(tabs.length == tabViews.length, 
      "The number of tabs and tab views must be equal");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: backgroundColor,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: TabBar(
            controller: tabController,
            labelStyle: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold, // Set bold font weight for active tab
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.normal, // Set normal font weight for inactive tabs
            ),
            labelColor: activeColor, // Active tab label color
            unselectedLabelColor: inactiveColor, // Inactive tab label color
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: indicatorColor, // Indicator color
            tabs: tabs,
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: tabViews,
          ),
        ),
      ],
    );
  }
}
