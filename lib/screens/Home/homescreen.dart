// import 'package:banking_app/constant/color_theme.dart';
// import 'package:banking_app/constant/font_theme.dart';
// import 'package:banking_app/main.dart';
// import 'package:banking_app/screens/widgets/item_of_home.dart';
// import 'package:banking_app/screens/widgets/item_of_shop.dart';
import 'package:banking_app/common_widgets/side_nav_item.dart';

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
            
            slider: SliderView(
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



  
 

 
  
  

