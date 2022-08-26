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
            CustomCards(
              img: ImgConst.card1,
              txt: TxtConst.tshirt1,
              a: TxtConst.price3,
            ),
            CustomCards(
              img: ImgConst.card2,
              txt: TxtConst.tshirt2,
              a: TxtConst.price2,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomCards(
              img: ImgConst.card3,
              txt: TxtConst.tshirt3,
              a: TxtConst.price1,
            ),
            CustomCards(
              img: ImgConst.card4,
              txt: TxtConst.tshirt4,
              a: TxtConst.price3,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomCards(
              img: ImgConst.card5,
              txt: TxtConst.tshirt5,
              a: TxtConst.price1,
            ),
            CustomCards(
              img: ImgConst.card6,
              txt: TxtConst.tshirt6,
              a: TxtConst.price2,
            ),
          ],
        ),
      ],
    );
  }
}
