import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConvertEmi extends StatefulWidget {
  const ConvertEmi({super.key});

  @override
  _ConvertEmiState createState() => _ConvertEmiState();
}

class _ConvertEmiState extends State<ConvertEmi> {
  String? selectedCard;
  List<bool> selectedTransactions = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CommonAppbar(text: "Convert Transaction To EMI"),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
              child: Container(
                height: 70.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.pink.shade100.withOpacity(0.2),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(
                        text: 'Convert up to ',
                        style: IciciBankFontTheme.textTheme.labelLarge!
                            .copyWith(color: IciciBankTheme.darkGray),
                        children: <TextSpan>[
                          TextSpan(
                            text: '5 transactions of ',
                            style: IciciBankFontTheme.textTheme.labelMedium!
                                .copyWith(color: IciciBankTheme.darkGray),
                          ),
                          TextSpan(
                            text: 'Minimum ₹1500 ',
                            style: IciciBankFontTheme.textTheme.labelMedium!
                                .copyWith(color: IciciBankTheme.darkGray),
                          ),
                          TextSpan(text: 'into EMI at once!'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Container(
                width: double.infinity,
                height: 100.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Credit Card Number',
                          style: IciciBankFontTheme.textTheme.labelMedium!
                              .copyWith(color: IciciBankTheme.blueTextColor),
                        ),
                        Container(

                          height: 50.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(15.r)
                          ),
                          child: Center(
                            child: DropdownButtonHideUnderline(
                              
                              child: ButtonTheme(
                                alignedDropdown: true,
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  elevation: 3,
                                  value: selectedCard,
                                  // menuWidth: double.infinity,
                                  items: [
                                    DropdownMenuItem(
                                      value: '1234 5678 9123 4567',
                                      child: Text(
                                        '1234 5678 9123 4567',
                                        style: IciciBankFontTheme.textTheme.labelMedium,
                                      ),
                                    ),
                                    DropdownMenuItem(
                                      value: '9876 5432 1098 7654',
                                      child: Text(
                                        '9876 5432 1098 7654',
                                        style: IciciBankFontTheme.textTheme.labelMedium,
                                      ),
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      selectedCard = value;
                                    });
                                  },
                                  hint: Text(
                                    'Select Card',
                                    style: IciciBankFontTheme.textTheme.labelMedium,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
              child: Text(
                'Select Transactions',
                style: IciciBankFontTheme.textTheme.bodyLarge!
                    .copyWith(color: IciciBankTheme.blueTextColor),
              ),
            ),
            Flexible(
              child: ListView.builder(
                itemCount:
                    selectedTransactions.length, // Number of transactions
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: Checkbox(
                        shape: CircleBorder(),
                        value: selectedTransactions[index],
                        onChanged: (bool? value) {
                          setState(() {
                            selectedTransactions[index] = value ?? false;
                          });
                        },
                      ),
                      title: Text(
                        'CAS*IRCTC ETICKETING,HTTPS://WWW.I,IN',
                        style: IciciBankFontTheme.textTheme.labelSmall!
                            .copyWith(fontSize: 12.sp),
                      ),
                      subtitle: Text(
                        "30 Aug'2024",
                        style: IciciBankFontTheme.textTheme.labelSmall!
                            .copyWith(fontSize: 10.sp),
                      ),
                      trailing: Column(
                        children: [
                          Text('Transaction Amount'),
                          Text('₹2,093.95',style: IciciBankFontTheme.textTheme.labelMedium,)
                        ],
                      ));
                },
              ),
            ),
            // Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Container(
                height: 50.h,
                width: double.infinity,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5.r)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: IciciBankTheme.blueTextColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r)
                    )
                  ),
                  onPressed: () {
                    // Handle button press and process the selected EMI conversion
                    if (selectedCard != null &&
                        selectedTransactions.contains(true)) {
                      // Process conversion logic here
                      print('Converting selected transactions to EMI');
                    } else {
                      // Show error message or handle invalid selection
                      print(
                          'Please select a card and at least one transaction.');
                    }
                  },
                  child: Text(
                    "Convert To EMI",
                    style: IciciBankFontTheme.textTheme.labelMedium!
                        .copyWith(color: IciciBankTheme.backgroundColor),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
