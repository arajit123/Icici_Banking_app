import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/common_widgets/common_tabbar.dart';
// import 'package:banking_app/screens/offers%20rewards/widgets/itemofoffer/widget/itemofcards.dart';
import 'package:banking_app/screens/refer%20a%20friend/widgets/imobile_item.dart';
import 'package:banking_app/screens/refer%20a%20friend/widgets/item_of_creditcard.dart';
// import 'package:banking_app/screens/tap%20to%20pay/widgets/item_of_creditcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReferAFriendpage extends StatefulWidget {
  const ReferAFriendpage({super.key});

  @override
  State<ReferAFriendpage> createState() => _ReferAFriendpageState();
}

class _ReferAFriendpageState extends State<ReferAFriendpage> with SingleTickerProviderStateMixin {
  late TabController tabController=TabController(length: 2, vsync: this);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CommonAppbar(text: 'Refer a Friend'),
        body: Column(
          children: [
            SizedBox(
              height: 682.h,
              child: CommonTabBar(
              
                tabController:tabController , tabs: const[
                 Tab(text: 'iMobile',
                
                ),
                 Tab(text: 'Credit Card',)
              ], tabViews:const [
                
                 ItemOfImobile(),
                 ItemOfCreditcard()
              ]),
            )
          ],
        ),
      ),
    );
  }
}