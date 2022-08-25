import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../Constants/img.dart';
import '../Functions/sliderimagefunc.dart';

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({Key? key}) : super(key: key);

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        sliderContainer(context, ImgConst.slider1),
        sliderContainer(context, ImgConst.slider2),
        sliderContainer(context, ImgConst.slider3),
      ],
      options: CarouselOptions(
        height: 180.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    );
  }
}
