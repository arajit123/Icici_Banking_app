import 'package:banking_app/constant/font_theme.dart';
import 'package:banking_app/screens/Flights/flights.dart';
import 'package:banking_app/screens/bus/bus.dart';
import 'package:banking_app/screens/giftcard/gift_card.dart';
import 'package:banking_app/screens/hotels/hotels.dart';
import 'package:banking_app/screens/my%20rewards/my_rewards.dart';
import 'package:banking_app/screens/rail/rail_screen.dart';
import 'package:banking_app/screens/refer%20a%20credit%20card/refer_a_credit_card.dart';
import 'package:banking_app/screens/tap%20to%20pay/taptopay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

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
            mainAxisExtent: 120,
          ),
          children: [
            customContainerView('assets/icons/train.png', 'Rail', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const RailScreen()));
            }),
            customContainerView('assets/icons/hotel.png', 'Hotels', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HotelsPage()));
            }),
            customContainerView('assets/icons/airplane.png', 'Flight', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FlightsPage()));
            }),
            customContainerView('assets/icons/bus.png', 'Bus', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BusPage()));
            }),
            customContainerView(
                'assets/icons/healthcare.png', 'Health & Wellness', () {
              _launchInWebView(Uri.parse('https://www.1mg.com/'));
            }),
            customContainerView('assets/icons/gift-card.png', 'E-Gift card',
                () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GiftCardPage()));
            }),
            customContainerView('assets/icons/tap-to-pay.png', 'Tap To Pay',
                () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TaptopayPage()));
            }),
            customContainerView('assets/icons/credit-card.png', 'Refer a Card',
                () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ReferACreditCardPage()));
            }),
            customContainerView('assets/icons/reward.png', 'My Rewards', () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyRewardsPage()));
            }),
          ],
        ),
      ),
    );
  }

  Widget customContainerView(
      String image, String labelText, VoidCallback ontap) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
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
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 30.h,
              width: 30.w,
            ),
            SizedBox(
              height: 9.h,
            ),
            Text(
              labelText,
              textAlign: TextAlign.center,
              style: IciciBankFontTheme.textTheme.labelSmall!
                  .copyWith(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchInWebView(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
}
