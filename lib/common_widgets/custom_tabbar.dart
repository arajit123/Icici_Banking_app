// import 'package:banking_app/screens/App_Permission/widgets/optional_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabbar extends StatefulWidget {
  final List<String> tabTitles;
  final List<Widget> tabViews;
  final TextStyle? labelStyle;
  final Color labelColor;
  final Color unselectedLabelColor;
  final Gradient indicatorGradient;
  final double height;
  final double width;
  final double borderRadius;

  const CustomTabbar({
    super.key,
    required this.tabTitles,
    required this.tabViews,
    this.labelStyle,
    this.labelColor = Colors.white,
    this.unselectedLabelColor = Colors.black54,
    this.indicatorGradient = const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [Color(0xFFF99D27), Color(0xFFf6711d)],
    ),
    this.height = 40,
    this.width = 330,
    this.borderRadius = 20,
  });

  @override
  State<CustomTabbar> createState() => _CustomTabbarState();
}

class _CustomTabbarState extends State<CustomTabbar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.tabTitles.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: widget.height,
            width: widget.width,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(1, 1),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: TabBar(
                controller: _tabController,
                labelStyle: widget.labelStyle,
                tabs: widget.tabTitles
                    .map((title) => Tab(text: title))
                    .toList(),
                indicator: BoxDecoration(
                  gradient: widget.indicatorGradient,
                  borderRadius: BorderRadius.circular(widget.borderRadius),
                ),
                labelColor: widget.labelColor,
                unselectedLabelColor: widget.unselectedLabelColor,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
              ),
            ),
          ),
        ),
        SizedBox(
    height: 628.h,                                         // You can make this customizable as well
          child: TabBarView(
            controller: _tabController,
            children: widget.tabViews,
          ),
        ),
      ],
    );
  }
}
