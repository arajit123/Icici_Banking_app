import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Itemofpopulargiftcards extends StatelessWidget {
  const Itemofpopulargiftcards({super.key});

  @override
  Widget build(BuildContext context) {
      final List<Map<String, String>> giftCards = [
      {'image': 'https://images.freekaamaal.com/post_images/1557127138.jpg', 'title': 'Amazon Pay E-Gift Cards'},
      {'image': 'https://5.imimg.com/data5/SELLER/Default/2023/4/298158477/RY/CU/NO/21373040/phonepe-gift-card-service.png', 'title': 'Phonpe E-Gift Voucher'},
      {'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSe8grtOGQpypND4wvZMj2A7HAda3jxM3HC2Q&s', 'title': 'Flipkart eGift Card'},
      {'image': 'https://i0.wp.com/s3.ap-south-1.amazonaws.com/img.paisawapas/images/2020/06/15173235/Amazon-Pay-E-Gift-Card-Terms-_-Conditions.png?fit=1200%2C600&ssl=1', 'title': 'Amazon Shopping Voucher'},
      {'image': 'https://5.imimg.com/data5/ANDROID/Default/2024/4/406077152/VJ/HH/GX/15462479/product-jpeg.jpg', 'title': 'Zomato E-Gift Card'},
      {'image': 'https://5.imimg.com/data5/SELLER/Default/2024/2/389662652/ZR/TP/FS/211087561/download-8-500x500.jpg', 'title': 'Swiggy Money E-Gift Card'},
      {'image': 'https://m.media-amazon.com/images/I/415b3x%2B%2BjbL.jpg', 'title': 'BookMyShow Instant Voucher'},
      {'image': 'https://i.imgur.com/LKF7loW.png', 'title': 'Croma E-Gift Card'},
    ];
    return Column(
      children: [
        SizedBox(height: 15.h,),
        Expanded(
                child: GridView.builder(
                  itemCount: giftCards.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 columns
                    crossAxisSpacing: 10.w, // Spacing between columns
                    mainAxisSpacing: 10.h, // Spacing between rows
                    childAspectRatio: 1, // Adjust the aspect ratio of the grid items
                  ),
                  itemBuilder: (context, index) {
                    final item = giftCards[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: IciciBankTheme.backgroundColor,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Column(
                        children: [
                          SizedBox(width: 4.w),
                          // Image asset
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.r),
                            child: Image.network(
                              item['image']!,
                              height: 100.h,
                              width:double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 20.h),
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
      ],
    );
  }
}