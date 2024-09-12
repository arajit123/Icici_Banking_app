import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:banking_app/screens/Bill%20payment%20&%20rechange/widgets/bill_payment_item.dart';
import 'package:banking_app/screens/Bill%20payment%20&%20rechange/widgets/my_bills_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class BillPaymentRechargePage extends StatefulWidget {
  const BillPaymentRechargePage({super.key});

  @override
  State<BillPaymentRechargePage> createState() => _BillPaymentRechargePageState();
}

class _BillPaymentRechargePageState extends State<BillPaymentRechargePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    // Simulate a delay (e.g., 3 seconds) for loading effect
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
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
        appBar: const CommonAppbar(text: "Bill Payment & FASTag"),
        body: Stack(
          children: [
            // Main content (Page Content)
            Column(
              children: [
                // "Pay your bill quick" text
                // Padding(
                //   padding: EdgeInsets.all(10.0.w),
                //   child: Text(
                //     'Pay your bill quick',
                //     style: TextStyle(
                //       fontSize: 18.sp,
                //       fontWeight: FontWeight.bold,
                //       color: IciciBankTheme.primaryColor,
                //     ),
                //   ),
                // ),
                Container(
                  height: 55.h,
                  width: double.infinity,
                  color: Colors.grey.shade100.withOpacity(0.9),
                  child: TabBar(
                    controller: _tabController,
                    labelStyle: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600),
                    labelColor: IciciBankTheme.primaryColor,
                    unselectedLabelColor: IciciBankTheme.darkGray,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: const [
                      Tab(text: 'Bill Payment & Recharge'),
                      Tab(text: 'My Bills'),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      BillPaymentItemPage(),
                      MyBillsItemPage(),
                    ],
                  ),
                ),
              ],
            ),

            // Loader Overlay (Displayed on top of the page)
            if (_isLoading)
              Container(
                color: Colors.white.withOpacity(0.8), // Slightly opaque background to dim the content
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     
                      Text(
                        'Pay Your Bills',
                        style: IciciBankFontTheme.textTheme.displaySmall!.copyWith(
                          color: IciciBankTheme.primaryColor,fontSize: 30.sp
                        )
                      ),
                      Text(
                        'Super Quick!',
                        style:IciciBankFontTheme.textTheme.displaySmall!.copyWith(
                          color: IciciBankTheme.primaryColor,fontSize: 30.sp
                        )
                      ),
                      // SizedBox(height: 20.h),
                      spinkit()
                       ,
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
 Widget spinkit() {
  return const SpinKitThreeInOut(
    
    color: IciciBankTheme.accentColor ,
    duration: Duration(milliseconds: 1200),
    size: 30.0,
  );
}
}
