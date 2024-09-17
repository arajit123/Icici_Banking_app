import 'package:banking_app/constant/font_theme.dart';
import 'package:banking_app/screens/rail/rail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemOfShop extends StatelessWidget {
  const ItemOfShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                mainAxisExtent: 120),
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RailScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.pink.shade100.withOpacity(0.3),
                            Colors.pink.shade100.withOpacity(0.2),
                            Colors.pink.shade100.withOpacity(0.1),
                            Colors.pink.shade100.withOpacity(0.05),
                            Colors.deepPurple.shade100.withOpacity(0.05),
                            Colors.deepPurple.shade100.withOpacity(0.1),
                            Colors.deepPurple.shade100.withOpacity(0.2),
                            Colors.deepPurple.shade100.withOpacity(0.3),
                          ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/train.png',
                        height: 30.h,
                        width: 30.w,
                        // color: const Color(0xFFf6711d),
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      Text('Rail',
                          style: IciciBankFontTheme.textTheme.labelSmall!
                              .copyWith(color: Colors.black54))
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.pink.shade100.withOpacity(0.3),
                          Colors.pink.shade100.withOpacity(0.2),
                          Colors.pink.shade100.withOpacity(0.1),
                          Colors.pink.shade100.withOpacity(0.05),
                          Colors.deepPurple.shade100.withOpacity(0.05),
                          Colors.deepPurple.shade100.withOpacity(0.1),
                          Colors.deepPurple.shade100.withOpacity(0.2),
                          Colors.deepPurple.shade100.withOpacity(0.3),
                        ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/hotel.png',
                      height: 30.h,
                      width: 30.w,
                      // color: const Color(0xFFf6711d),
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    Text('Hotels',
                        style: IciciBankFontTheme.textTheme.labelSmall!
                            .copyWith(color: Colors.black54)),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.pink.shade100.withOpacity(0.3),
                          Colors.pink.shade100.withOpacity(0.2),
                          Colors.pink.shade100.withOpacity(0.1),
                          Colors.pink.shade100.withOpacity(0.05),
                          Colors.deepPurple.shade100.withOpacity(0.05),
                          Colors.deepPurple.shade100.withOpacity(0.1),
                          Colors.deepPurple.shade100.withOpacity(0.2),
                          Colors.deepPurple.shade100.withOpacity(0.3),
                        ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/airplane.png',
                      height: 30.h,
                      width: 30.w,
                      // color: const Color(0xFFf6711d),
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    Text('Flight',
                        style: IciciBankFontTheme.textTheme.labelSmall!
                            .copyWith(color: Colors.black54))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.pink.shade100.withOpacity(0.3),
                          Colors.pink.shade100.withOpacity(0.2),
                          Colors.pink.shade100.withOpacity(0.1),
                          Colors.pink.shade100.withOpacity(0.05),
                          Colors.deepPurple.shade100.withOpacity(0.05),
                          Colors.deepPurple.shade100.withOpacity(0.1),
                          Colors.deepPurple.shade100.withOpacity(0.2),
                          Colors.deepPurple.shade100.withOpacity(0.3),
                        ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/bus.png',
                      height: 30.h,
                      width: 30.w,
                      // color: const Color(0xFFf6711d),
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    Text('Bus',
                        style: IciciBankFontTheme.textTheme.labelSmall!
                            .copyWith(color: Colors.black54)),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.pink.shade100.withOpacity(0.3),
                          Colors.pink.shade100.withOpacity(0.2),
                          Colors.pink.shade100.withOpacity(0.1),
                          Colors.pink.shade100.withOpacity(0.05),
                          Colors.deepPurple.shade100.withOpacity(0.05),
                          Colors.deepPurple.shade100.withOpacity(0.1),
                          Colors.deepPurple.shade100.withOpacity(0.2),
                          Colors.deepPurple.shade100.withOpacity(0.3),
                        ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/healthcare.png',
                      height: 28.h,
                      width: 28.w,
                      // color: const Color(0xFFf6711d),
                    ),
                    // SizedBox(
                    //   height: 9.h,
                    // ),
                    Text('Health &',
                        style: IciciBankFontTheme.textTheme.labelSmall!
                            .copyWith(color: Colors.black54)),
                    Text('Wellness',
                        style: IciciBankFontTheme.textTheme.labelSmall!
                            .copyWith(color: Colors.black54))
                  ],
                ),
              ),
              customContainerView('assets/icons/gift-card.png', 'E-Gift card'),
              customContainerView('assets/icons/tap-to-pay.png', 'Tap To Pay'),
              customContainerView(
                  'assets/icons/credit-card.png', 'Refer a Card'),
              customContainerView('assets/icons/reward.png', 'My Rewards')
            ]),
      ),
    );
  }

  Widget customContainerView(String image, String labelText) {
    return Container(
      decoration: BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.pink.shade100.withOpacity(0.3),
                Colors.pink.shade100.withOpacity(0.2),
                Colors.pink.shade100.withOpacity(0.1),
                Colors.pink.shade100.withOpacity(0.05),
                Colors.deepPurple.shade100.withOpacity(0.05),
                Colors.deepPurple.shade100.withOpacity(0.1),
                Colors.deepPurple.shade100.withOpacity(0.2),
                Colors.deepPurple.shade100.withOpacity(0.3),
              ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 30.h,
            width: 30.w,
            // color: const Color(0xFFf6711d),
          ),
          SizedBox(
            height: 9.h,
          ),
          Text(labelText,
              style: IciciBankFontTheme.textTheme.labelSmall!
                  .copyWith(color: Colors.black54))
        ],
      ),
    );
  }
}
