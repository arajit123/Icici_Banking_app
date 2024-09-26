import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonImageCarousel extends StatefulWidget {
  final List<String> imageList;
  final double height;

  // ignore: use_super_parameters
  const CommonImageCarousel({
    Key? key,
    required this.imageList,
    this.height = 160,
  }) : super(key: key);

  @override
  CommonImageCarouselState createState() => CommonImageCarouselState();
}

class CommonImageCarouselState extends State<CommonImageCarousel> {
  int current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: widget.imageList.length,
          carouselController: _controller,
          itemBuilder: (context, index, realIdx) {
            return Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 2.w),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.r)),
                child: Image.network(
                  widget.imageList[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            );
          },
          options: CarouselOptions(
            height: widget.height.h,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                current = index;
              });
            },
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.imageList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: current == entry.key ? 12.0.w : 8.0.w,
                  height: current == entry.key ? 12.0.h : 8.0.h,
                  margin: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 4.0.w),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: current == entry.key ? Colors.white : Colors.grey.withOpacity(0.8),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
