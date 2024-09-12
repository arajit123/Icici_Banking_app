import 'package:banking_app/constant/font_theme.dart';
import 'package:banking_app/screens/Bill%20payment%20&%20rechange/bill_payment_recharge_page.dart';
import 'package:banking_app/screens/My_cards/my_cards.dart';
import 'package:banking_app/screens/digital%20savings%20account/savings_account.dart';
import 'package:banking_app/screens/recharge/recharge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemOfHome extends StatelessWidget {
  const ItemOfHome({super.key});

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
                      MaterialPageRoute(builder: (context) => const MyCardsPage()));
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
                        'assets/icons/credit.png',
                        height: 30.h,
                        width: 30.w,
                        // color: const Color(0xFFf6711d),
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      Text('My Cards',
                          style: IciciBankFontTheme.textTheme.labelSmall!
                              .copyWith(color: Colors.black54))
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                   Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const BillPaymentRechargePage()));
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
                        'assets/icons/bb.png',
                        height: 50.h,
                        width: 50.w,
                        // color: const Color(0xFFf6711d),
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      Text('Bill Payment &',
                          style: IciciBankFontTheme.textTheme.labelSmall!
                              .copyWith(color: Colors.black54)),
                      Text('Fastag',
                          style: IciciBankFontTheme.textTheme.labelSmall!
                              .copyWith(color: Colors.black54))
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const RechargePage()));
                },
                child: Stack(
                    // alignment: Alignment.center,
                    fit: StackFit.expand,
                    clipBehavior: Clip.none,
                    children: [
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
                              'assets/icons/mobile.png',
                              height: 28.h,
                              width: 28.w,
                              // color: const Color(0xFFf6711d),
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            Text('Recharge',
                                style: IciciBankFontTheme.textTheme.labelSmall!
                                    .copyWith(color: Colors.black54))
                          ],
                        ),
                      ),
                      Positioned(
                          left: 25,
                          bottom: 100,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Color(0xFFF99D27), Color(0xFFf6711d)],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                'New Experience',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10.sp),
                              ),
                            ),
                          )),
                    ]),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const DigitalSavingsAccountPage()));
                },
                child: Stack(fit: StackFit.expand, clipBehavior: Clip.none, children: [
                  Container(
                    decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(20.r),
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
                          'assets/icons/savings.png',
                          height: 35.h,
                          width: 35.w,
                          // color: const Color(0xFFf6711d),
                        ),
                        SizedBox(
                          height: 9.h,
                        ),
                        Text('Digital Savings',
                            style: IciciBankFontTheme.textTheme.labelSmall!
                                .copyWith(color: Colors.black54)),
                        Text('Account',
                            style: IciciBankFontTheme.textTheme.labelSmall!
                                .copyWith(color: Colors.black54))
                      ],
                    ),
                  ),
                  Positioned(
                      right: -0,
                      bottom: 105,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xFFF99D27), Color(0xFFf6711d)],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            '  New  ',
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.sp),
                          ),
                        ),
                      )),
                ]),
              ),
              customContainerView('assets/icons/hand.png', 'iFinance'),
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
                      'assets/icons/calendar.png',
                      height: 28.h,
                      width: 28.w,
                      // color: const Color(0xFFf6711d),
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    Text('Convert to',
                        style: IciciBankFontTheme.textTheme.labelSmall!
                            .copyWith(color: Colors.black54)),
                    Text('EMI',
                        style: IciciBankFontTheme.textTheme.labelSmall!
                            .copyWith(color: Colors.black54))
                  ],
                ),
              ),
              customContainerView('assets/icons/money-bag.png', 'Loans'),
              customContainerView(
                  'assets/icons/payment-check.png', 'Upgrade Card'),
              customContainerView('assets/icons/gift.png', 'Offers'),
              // Divider()
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
