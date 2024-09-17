import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemofCardsPage extends StatelessWidget {
  const ItemofCardsPage({super.key});

  final List<Map<String, String>> offers = const [
    {
      "image": 'https://static.mediawire.in/pr/metadata/44601737/temp/poorvika_logo-01.png?id=17514?id=17514',
      "title": 'Poorvika Offer',
      "description": 'Get Flat 7.5% off up to Rs 3,000'
    },
    {
      "image": 'https://landing.taxbuddy.com/images/Taxbuddy.png',
      "title": 'TaxBuddy Offer',
      "description": 'Flat 20% off on all Tax related services'
    },
    {
      "image": 'https://mma.prnewswire.com/media/463128/PRNE_Bakingo_logo_Logo.jpg?p=facebook',
      "title": 'Bakingo Offer',
      "description": 'Available instant discount of 25% upto Rs 249'
    },
    {
      "image": 'https://logolook.net/wp-content/uploads/2022/12/OnePlus-Symbol.png',
      "title": 'One Plus Easy Upgrade',
      "description": 'Buy now,pay later with 18 month No Extra Cost EMI'
    },
    {
      "image": 'https://fitpass.rs/blog/wp-content/uploads/2022/10/fitpass-logo.png',
      "title": 'Fit Pass Offer',
      "description": 'Avail up to 80% off on FITPASS Membership'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cards Offers',
                style: IciciBankFontTheme.textTheme.labelMedium!
                    .copyWith(color: IciciBankTheme.accentColor),
              ),
              Text(
                'See All',
                style: IciciBankFontTheme.textTheme.labelMedium!
                    .copyWith(color: IciciBankTheme.blueTextColor),
              )
            ],
          ),
          SizedBox(height: 15.h),
          Expanded(
            child: GridView.builder(
              itemCount: offers.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 10.h,
                childAspectRatio: 0.9, // Adjust to control grid item size
              ),
              itemBuilder: (context, index) {
                final offer = offers[index];
                return Container(
                  decoration: BoxDecoration(
                    color: IciciBankTheme.backgroundColor,
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          topRight: Radius.circular(20.r),
                        ),
                        child: Image.network(
                          offer['image']!,
                          height: 56.h,
                          width: double.infinity,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 4.h, horizontal: 8.w),
                              decoration: BoxDecoration(
                                color: IciciBankTheme.accentColor,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Text(
                                'Discount',
                                style: IciciBankFontTheme.textTheme.labelMedium!
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            Text(
                              offer['title']!,
                              style: IciciBankFontTheme.textTheme.labelMedium,
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              offer['description']!,
                              style: IciciBankFontTheme.textTheme.labelSmall!
                                  .copyWith(
                                      color: IciciBankTheme.blueTextColor),
                            ),
                            
                           
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
