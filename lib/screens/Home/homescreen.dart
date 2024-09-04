// import 'package:banking_app/constant/color_theme.dart';
// import 'package:banking_app/constant/font_theme.dart';
// import 'package:banking_app/main.dart';
// import 'package:banking_app/screens/widgets/item_of_home.dart';
// import 'package:banking_app/screens/widgets/item_of_shop.dart';
import 'package:banking_app/screens/Home/widgets/custom_list_tile.dart';
import 'package:banking_app/screens/Home/widgets/main_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
     {
       final GlobalKey<SliderDrawerState> _sliderDrawerKey =
      GlobalKey<SliderDrawerState>();
  late String title;

  @override
  void initState() {
    super.initState();
     title = "";
    
  }

 
  @override Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      body: SliderDrawer(
         
            appBar: SliderAppBar(
              appBarPadding: const EdgeInsets.only(top: 5),
                appBarHeight: 50,
                appBarColor: Colors.white,
                drawerIconSize: 30,
                title:  SizedBox(
          height: 50.h,
          width: double.infinity,
          child: Row(
            children: [
              // const Padding(
              //   padding: EdgeInsets.all(8.0),
              //   child: Icon(
              //     Icons.menu,
              //     size: 30,
              //   ),
              // ),
              SizedBox(
                width: 70.w,
              ),
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 150.h,
                  width: 150.w,
                ),
              )
            ],
          ),
        ),),
            key: _sliderDrawerKey,
            sliderOpenSize: 205,
            slider: _SliderView(
              onItemClick: (title) {
                _sliderDrawerKey.currentState!.closeSlider();
                setState(() {
                  this.title = title;
                });
              },
            ),
            child: const MainContent()),
    ),
  );
}


  }
class _SliderView extends StatelessWidget {
  final Function(String)? onItemClick;

  const _SliderView({this.onItemClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      // padding: const EdgeInsets.only(top: 30),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Divider(
          color: Colors.white.withOpacity(0.9),
          thickness: 0.5,
        ),
         CustomListTile(text: 'Home', icon: Icons.home_outlined),
         CustomListTile(text: 'Apply Now', icon: Icons.app_registration_rounded),
         CustomListTile(text: 'Contact Us', icon: Icons.contact_mail_outlined),
         CustomListTile(text: 'Calculator', icon: Icons.calculate_outlined),
         CustomListTile(text: 'Receipts', icon: Icons.receipt_long_rounded),
         CustomListTile(text: 'Safety Tips', icon: Icons.home_outlined),
         CustomListTile(text: 'Change Login PIN', icon: Icons.privacy_tip_outlined),
         CustomListTile(text: 'Disable Fingerprint', icon: Icons.fingerprint_sharp),
         CustomListTile(text: 'App Permissions', icon: Icons.settings_applications_outlined),
         CustomListTile(text: 'Rate Us', icon: Icons.star_border_rounded),
         CustomListTile(text: 'LogOut', icon: Icons.power_settings_new_sharp),
    
    
    
    
    
          
         
        ],
      ),
    );
  }
}


  
 

 
  
  

