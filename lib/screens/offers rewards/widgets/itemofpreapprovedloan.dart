import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemOfPreApprovedLoanPage extends StatelessWidget {
  const ItemOfPreApprovedLoanPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Define a list of dynamic data for each item
    List<Map<String, dynamic>> importantInformation = [
      {
        "title": "Credit Card",
        "description": "Get a Credit Card online with minimum documentation",
        "color":  Colors.deepPurple.shade100.withOpacity(0.3),
        "image": 'assets/icons/offer1.png',
        "buttonText": Colors.orange.shade100,
      },
      {
        "title": "Personal Loan",
        "description": "Get Quick access to funds with minimum documentations",
        "color":  Colors.orange.shade100,
        "image":'assets/icons/personal.png',
        "buttonText": Colors.deepPurple.shade100.withOpacity(0.3),
      },
      {
        "title": "Home Loan",
        "description": "Home loan in just a few clicks",
        "color": Colors.deepPurple.shade100.withOpacity(0.3),
        "image": 'assets/icons/home.png',
        "buttonText": Colors.orange.shade100,
      },
       {
        "title": "Auto Loan",
        "description": "Book your dream car with minimum documentation",
        "color": Colors.orange.shade100,
        "image":'assets/icons/car-loan.png',
        "buttonText": Colors.deepPurple.shade100.withOpacity(0.3),
      },
       {
        "title": "Two Wheeler Loan",
        "description": "Get your dream bike with ICICI Bank's Two-Wheeler Loan",
        "color":Colors.deepPurple.shade100.withOpacity(0.3),
        "image":'assets/icons/sharing.png',
        "buttonText": Colors.orange.shade100,
      },
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(height: 20.h),
          RichText(
            text: TextSpan(
              text: 'Note: ',
              style: IciciBankFontTheme.textTheme.bodyMedium!.copyWith(
                color: IciciBankTheme.darkGray,
                fontSize: 16.sp,
              ),
              children: [
                TextSpan(
                  text:
                      'I authorize ICICI Bank and its representatives to call or SMS me with reference to my application*',
                  style: IciciBankFontTheme.textTheme.bodySmall!.copyWith(
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'Important Information for Digital Lending',
            style: IciciBankFontTheme.textTheme.bodyLarge!.copyWith(
              color: IciciBankTheme.blueTextColor,
            ),
          ),
          SizedBox(height: 10.h),
          // Use ListView.builder for dynamic content
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: importantInformation.length,
            itemBuilder: (context, index) {
              final item = importantInformation[index];
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: Container(
                  height: 200.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: item['color'], // Dynamic container color
                  ),
                  child: Stack(
                    children: [
                      // Positioned label at the top left corner
                      Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color:  item['buttonText'],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              item['title'], // Dynamic title (Credit Card, etc.)
                              style: IciciBankFontTheme.textTheme.labelMedium!
                                  .copyWith(
                                      color: IciciBankTheme.primaryColor),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Dynamic image on the left
                            Image.asset(
                              item['image'], // Dynamic image path
                              height: 60.h,
                              width: 60.w,
                            ),
                            SizedBox(width: 20.w), // Space between image and text
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Dynamic text content
                                  Text(
                                    item['description'], // Dynamic description
                                    style: IciciBankFontTheme.textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            fontSize: 16.sp,
                                            color: IciciBankTheme.blueTextColor),
                                  ),
                                  SizedBox(height: 10.h),
                                  // Dynamic button
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          IciciBankTheme.blueTextColor,
                                    ),
                                    onPressed: () {
                                      // Action for apply now or other actions
                                    },
                                    child: Text(
                                     'Apply Now →', // Dynamic button text
                                      style: IciciBankFontTheme.textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color: IciciBankTheme
                                                  .backgroundColor),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
