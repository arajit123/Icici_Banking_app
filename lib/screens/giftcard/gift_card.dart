import 'package:banking_app/common_widgets/common_appbar.dart';
// import 'package:banking_app/common_widgets/common_tabbar.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:banking_app/screens/giftcard/widgets/itemofpopulargiftcards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GiftCardPage extends StatefulWidget {
  const GiftCardPage({super.key});

  @override
  State<GiftCardPage> createState() => _GiftCardPageState();
}

class _GiftCardPageState extends State<GiftCardPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // Adjusted to 2 as there are only two tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // List of image paths and corresponding titles for the grid items
    final List<Map<String, String>> giftCards = [
      {'image': 'assets/icons/diet.png', 'title': 'Food & Grocery'},
      {'image': 'assets/icons/necklace.png', 'title': 'Jewellery & Accessories'},
      {'image': 'assets/icons/fashion-designer.png', 'title': 'Beauty & Fashion'},
      {'image': 'assets/icons/diet.png', 'title': 'Health and Essentials'},
      {'image': 'assets/icons/clapperboard.png', 'title': 'Entertainment'},
      {'image': 'assets/icons/room.png', 'title': 'Home and Furniture'},
      {'image': 'assets/icons/cocktail.png', 'title': 'Travel & Leisure'},
      {'image': 'assets/icons/checkout.png', 'title': 'E-com & Others'},
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: IciciBankTheme.lightGray,
        appBar: const CommonAppbar(text: 'Gift Cards'),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search TextField
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: const Icon(
                    Icons.search,
                    color: IciciBankTheme.lightGray,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search Gift Cards',
                  hintStyle: IciciBankFontTheme.textTheme.labelSmall,
                ),
              ),
              SizedBox(height: 12.h), // Add space between TextField and text
              
              // Text for Explore by category
              Text(
                "Explore by category",
                style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                  color: IciciBankTheme.blueTextColor,
                ),
              ),
              SizedBox(height: 12.h), // Add space between text and grid

              // Expanded GridView to avoid unbounded height issues
              Expanded(
                child: GridView.builder(
                  itemCount: giftCards.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 columns
                    crossAxisSpacing: 10.w, // Spacing between columns
                    mainAxisSpacing: 10.h, // Spacing between rows
                    childAspectRatio: 3, // Adjust the aspect ratio of the grid items
                  ),
                  itemBuilder: (context, index) {
                    final item = giftCards[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: IciciBankTheme.backgroundColor,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 4.w),
                          // Image asset
                          Image.asset(
                            item['image']!,
                            height: 20.h,
                            width: 20.w,
                          ),
                          SizedBox(width: 4.h),
                          // Text beside the image
                          Text(
                            item['title']!,
                            style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
                              color: IciciBankTheme.blueTextColor,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              // Custom TabBar
             Container(
              height: 55.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: IciciBankTheme.lightGray,
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black12,
                  //     blurRadius: 5,
                  //     offset: Offset(0, 2)
                  //   )
                  // ]
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
                      .bold, // Set font weight to normal for inactive tabs
                ),
                labelColor: IciciBankTheme.blueTextColor,
                unselectedLabelColor: IciciBankTheme.blueTextColor, // Different color for unselected labels
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: IciciBankTheme.accentColor,
                dividerColor: Colors.transparent,
                tabs: const [
                  FittedBox(
                      // fit: BoxFit.scaleDown,
                      child: Tab(text: 'Popular Gift Cards')),
                  FittedBox(fit: BoxFit.scaleDown, child: Tab(text: 'Popular Deals')),
                  // FittedBox(fit: BoxFit.scaleDown, child: Tab(text: 'My Bookings')),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                 Itemofpopulargiftcards(),
                  Itemofpopulargiftcards()
                ],
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
