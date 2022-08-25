import 'package:flutter/material.dart';
import '../Constants/img.dart';
import '../Functions/customcards.dart';

class CustomCardRow extends StatelessWidget {
  const CustomCardRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            customcards(
              context,
              ImgConst.card1,
              "TShirt",
              250,
            ),
            customcards(
              context,
              ImgConst.card2,
              "TShirt2",
              250,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            customcards(
              context,
              ImgConst.card3,
              "TShirt3",
              250,
            ),
            customcards(
              context,
              ImgConst.card4,
              "TShirt4",
              250,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            customcards(
              context,
              ImgConst.card5,
              "TShirt5",
              250,
            ),
            customcards(
              context,
              ImgConst.card6,
              "TShirt6",
              250,
            ),
          ],
        ),
      ],
    );
  }
}
