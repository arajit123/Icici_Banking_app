import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemOfCreditcardPage extends StatefulWidget {
  const ItemOfCreditcardPage({super.key});

  @override
  _ItemOfCreditcardPageState createState() => _ItemOfCreditcardPageState();
}

class _ItemOfCreditcardPageState extends State<ItemOfCreditcardPage> {
  bool _tapToPay = false;
  bool _setAsDefault = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: IciciBankTheme.backgroundColor,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(1, 1),
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.network(
                      'https://m.media-amazon.com/images/G/31/img18/AmazonPay/Affordability/CBCC/Amazoncard_Final._CB570101839_.jpg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tap to Pay',
                        style: IciciBankFontTheme.textTheme.labelMedium!
                            .copyWith(color: IciciBankTheme.primaryColor),
                      ),
                      Transform.scale(
                      scale: 0.7,
                        child: Switch(
                          inactiveTrackColor: IciciBankTheme.lightGray,
                          activeColor: IciciBankTheme.accentColor,
                          value: _tapToPay,
                          onChanged: (bool newValue) {
                            setState(() {
                              _tapToPay = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: IciciBankTheme.lightGray,
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Set as Default',
                        style: IciciBankFontTheme.textTheme.labelMedium!
                            .copyWith(color: IciciBankTheme.primaryColor),
                      ),
                      Transform.scale(
                        scale: 0.7,
                        child: Switch(
                          inactiveTrackColor: IciciBankTheme.lightGray,
                          activeColor: IciciBankTheme.accentColor,
                          value: _setAsDefault,
                          onChanged: (bool newValue) {
                            setState(() {
                              _setAsDefault = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
