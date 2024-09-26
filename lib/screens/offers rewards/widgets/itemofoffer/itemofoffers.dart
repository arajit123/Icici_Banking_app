import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:banking_app/screens/offers%20rewards/widgets/itemofoffer/widget/itemofalloffer.dart';
import 'package:banking_app/screens/offers%20rewards/widgets/itemofoffer/widget/itemofcards.dart';
import 'package:banking_app/screens/offers%20rewards/widgets/itemofoffer/widget/itemofdinning.dart';
import 'package:banking_app/screens/offers%20rewards/widgets/itemofoffer/widget/itemofshopping.dart';
import 'package:banking_app/screens/offers%20rewards/widgets/itemofoffer/widget/itemoftravel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemofoffersPage extends StatefulWidget {
  const ItemofoffersPage({super.key});

  @override
  State<ItemofoffersPage> createState() => _ItemofoffersPageState();
}

class _ItemofoffersPageState extends State<ItemofoffersPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  final List<String> imageList = [
    'https://www.nykaa.com/media/wysiwyg/2021/BankOffers/tnc_beauty_banner.jpg',
    'https://offercdn.paytm.com/blog/2021/12/icici-domestic-app.png',
    'https://cardinsider.com/wp-content/uploads/2023/10/ICICI-Bank-Launches-%E2%80%98Festive-Bonanza-With-Offers_-Cashback-Discounts-on-Major-Brands-Feature.jpg',
    'https://pbs.twimg.com/media/F7r2ibna4AAWbOv.jpg',
    'https://offers.freecharge.in/regICICIBank/images/Icici-lp-banner.png',
    'https://www.icicibank.com/content/dam/assets/images/saving-account/custom-card/custom-card.png',
    'https://offercdn.paytm.com/blog/2022/01/icici-international-sale-app-9.png'
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
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
        SizedBox(
          height: 5.h,
        ),
        // Carousel Slider
        Stack(children: [
          CarouselSlider.builder(
            itemCount: imageList.length,
            carouselController: _controller,
            itemBuilder: (context, index, realIdx) {
              return Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 2.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.r)),
                  child: Image.network(
                    imageList[index],
                    fit:
                        BoxFit.fill, // Change to cover to ensure proper scaling
                    width: double.infinity,
                  ),
                ),
              );
            },
            options: CarouselOptions(
              height: 160.h,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  current = index;
                });
              },
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: current == entry.key ? 12.0.w : 8.0.w,
                    height: current == entry.key ? 12.0.h : 8.0.h,
                    margin: EdgeInsets.symmetric(
                        vertical: 8.0.h, horizontal: 4.0.w),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: current == entry.key
                          ? Colors.white
                          : Colors.grey.withOpacity(0.8),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ]),
        Container(
          height: 80.h, // Increased height to accommodate the content
          width: double.infinity,
          color: Colors.white,
          child: TabBar(
            physics: BouncingScrollPhysics(),
            // isScrollable: true,
            // isScrollable: true,
            controller: _tabController,
            labelPadding: EdgeInsets.symmetric(vertical: 4.h),
            labelStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.normal,
            ),
            indicatorColor: Colors.transparent, // Remove default indicator
            tabs: [
              _buildTab(Icons.favorite_border, 'All Offers', 0),
              _buildTab(Icons.credit_card, 'Cards', 1),
              _buildTab(Icons.shopping_bag_outlined, 'Shopping', 2),
              _buildTab(Icons.flight_takeoff_rounded, 'Travel', 3),
              _buildTab(Icons.dining_outlined, 'Dining', 4),
            ],
            onTap: (index) {
              setState(() {
                _tabController.index = index;
              });
            },
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              ItemofallofferPage(),
              ItemofCardsPage(),
              ItemofShoppingPage(),
              ItemoftravelPage(),
              ItemofDinningPage()
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTab(IconData icon, String text, int index) {
    return FittedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _tabController.index == index
                  ? IciciBankTheme.blueTextColor
                  : IciciBankTheme.lightGray,
            ),
            child: Icon(
              icon,
              size: 30,
              color: _tabController.index == index
                  ? Colors.white
                  : IciciBankTheme.primaryColor,
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            text,
            style: IciciBankFontTheme.textTheme.labelSmall,
          ),
          // SizedBox(height: 20.w,)
        ],
      ),
    );
  }
}
