import 'package:flutter/material.dart';
import 'package:shopping_cart/Screens/addtocart.dart';
import 'package:shopping_cart/Widgets/cardrow.dart';
import '../Constants/img.dart';
import '../Widgets/images.dart';

class Men extends StatelessWidget {
  const Men({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Images(
                w: 1,
                h: 0.1,
                imageconst: ImgConst.img1,
              ),
              CustomCardRow(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddToCart(),
            ),
          );
        },
        child: Text("Cart"),
      ),
    );
  }
}
