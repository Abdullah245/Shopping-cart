import 'package:flutter/material.dart';
import 'package:shopping_cart/Widgets/listtile.dart';
import '../Constants/img.dart';
import '../Widgets/images.dart';
import '../Widgets/slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Images(
              w: 1,
              h: 0.1,
              imageconst: ImgConst.img1,
            ),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: const [
                      CustomCarouselSlider(),
                      CustomListTile(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
