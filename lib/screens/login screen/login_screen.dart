import 'package:banking_app/common_widgets/common_image_carousel.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:banking_app/screens/Home/homescreen.dart';
import 'package:banking_app/screens/Loans/loans.dart';
import 'package:banking_app/screens/calculator/calculator.dart';
import 'package:banking_app/screens/digital%20savings%20account/savings_account.dart';
import 'package:banking_app/screens/refer%20a%20credit%20card/refer_a_credit_card.dart';
import 'package:banking_app/screens/refer%20a%20friend/refer_a_friend.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:local_auth/local_auth.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List<String> imageList = [
    'https://www.icicibank.com/content/dam/icicibank/india/managed-assets/images/offer-zone/tata-cliq-palette-net-banking-offer-v1.webp',
    'https://www.icicibank.com/content/dam/icicibank/india/managed-assets/images/offer-zone/tata-cliq-palette-net-banking-offer-v1.webp',
    'https://www.icicibank.com/content/dam/icicibank/india/managed-assets/images/offer-zone/tata-cliq-palette-net-banking-offer-v1.webp'
  ];

  final LocalAuthentication auth = LocalAuthentication();
  bool _isAuthenticating = false;
  String _authorized = 'Not Authorized';
  //  int current = 0;
  // final CarouselSliderController _controller = CarouselSliderController();

  @override
  void initState() {
    super.initState();
    _authenticateWithBiometrics();
  }

  Future<void> _authenticateWithBiometrics() async {
    bool authenticated = false;
    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });
      authenticated = await auth.authenticate(
        localizedReason: 'Please authenticate to continue',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
      setState(() {
        _isAuthenticating = false;
      });
    } catch (e) {
      print(e);
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Error - ${e.toString()}';
      });
      return;
    }

    if (!mounted) return;

    if (authenticated) {
      // Navigate to Home Page if authentication is successful
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const Homescreen())); // Update this with your home route
    } else {
      setState(() {
        _authorized = 'Not Authorized';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Top gradient background with logo and app version
                Container(
                  height: 250.h,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFFF99D27), Color(0xFFf6711d)],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(105, 70),
                      bottomRight: Radius.elliptical(105, 70),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/images/logo.png',
                              height: 50.h,
                              width: 150.w,
                              color: IciciBankTheme.backgroundColor,
                            ),
                            Text(
                              'App Ver 19.2',
                              style: IciciBankFontTheme.textTheme.labelMedium!
                                  .copyWith(
                                      color: IciciBankTheme.backgroundColor),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Hi, Arajit Garai',
                            style: IciciBankFontTheme.textTheme.headlineSmall!
                                .copyWith(
                                    color: IciciBankTheme.backgroundColor,
                                    fontSize: 27.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Positioned container for fingerprint and PIN input
                Positioned(
                  top: 100.h,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 200.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade50,
                      borderRadius: BorderRadius.circular(12.r),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.fingerprint,
                              size: 35.h,
                              color: IciciBankTheme.textColor,
                            ),
                            SizedBox(width: 10.w),
                            GestureDetector(
                              onTap: () {
                                _authenticateWithBiometrics();
                              },
                              child: Text(
                                'Unlock with fingerprint',
                                style: IciciBankFontTheme.textTheme.bodyMedium!
                                    .copyWith(color: IciciBankTheme.textColor),
                              ),
                            ),
                          ],
                        ),
                        Text('or',
                            style: IciciBankFontTheme.textTheme.bodyMedium),
                        Text(
                          'Enter 4 Digit Login PIN',
                          style: IciciBankFontTheme.textTheme.bodyMedium!
                              .copyWith(color: IciciBankTheme.primaryColor),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.0),
                          child: TextField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            maxLength: 4,
                            obscureText: true,
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.orange, width: 1),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            // Handle forgot PIN
                          },
                          child: Text(
                            'Forgot PIN?',
                            style: IciciBankFontTheme.textTheme.bodyMedium!
                                .copyWith(color: IciciBankTheme.blueTextColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 70.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text('Products at your fingertips',
                  style: IciciBankFontTheme.textTheme.headlineSmall!
                      .copyWith(color: IciciBankTheme.primaryColor)),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 220.h,
              child: GridView(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 100,
                ),
                children: [
                  customContainerView(
                      'assets/icons/savings.png', 'Open Savings Account', () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const DigitalSavingsAccountPage()));
                  }),
                  customContainerView(
                      'assets/icons/offer1.png', 'Apply For Credit Card', () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ReferACreditCardPage()));
                  }),
                  customContainerView('assets/icons/loan.png', 'Apply For Loan',
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoansPage()));
                  }),
                  customContainerView(
                      'assets/icons/calculator.png', 'Calculators', () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CalculatorPage()));
                  }),
                  customContainerView(
                      'assets/icons/share.png', 'Refer a Friend', () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ReferAFriendpage()));
                  }),
                  customContainerView(
                      'assets/icons/customer-support.png', 'Contact Us', () {
                    _launchContactUs();
                  }),
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            // Carousel Slider
            CommonImageCarousel(
              imageList: imageList,
              height: 160.h,
            ),
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
          children: [
            Image.asset(image, height: 25.h),
            SizedBox(height: 9.h),
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

  final Uri contactPhoneUri = Uri(
    scheme: 'tel',
    path: '18001080',
  );

// Function to launch phone dialer
  Future<void> _launchContactUs() async {
    if (!await launchUrl(contactPhoneUri)) {
      throw Exception('Could not launch $contactPhoneUri');
    }
  }
}
