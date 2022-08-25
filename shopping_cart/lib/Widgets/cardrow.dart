import 'package:flutter/material.dart';
import 'package:shopping_cart/Constants/text.dart';
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
              TxtConst.tshirt1,
              TxtConst.price3,
            ),
            customcards(
              context,
              ImgConst.card2,
              TxtConst.tshirt2,
              TxtConst.price2,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            customcards(
              context,
              ImgConst.card3,
              TxtConst.tshirt3,
              TxtConst.price1,
            ),
            customcards(
              context,
              ImgConst.card4,
              TxtConst.tshirt4,
              TxtConst.price3,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            customcards(
              context,
              ImgConst.card5,
              TxtConst.tshirt5,
              TxtConst.price1,
            ),
            customcards(
              context,
              ImgConst.card6,
              TxtConst.tshirt6,
              TxtConst.price2,
            ),
          ],
        ),
      ],
    );
  }
}
