import 'package:flutter/material.dart';
import 'package:shopping_cart/Constants/img.dart';
import 'package:shopping_cart/Constants/text.dart';
import 'package:shopping_cart/Functions/customlisttile.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Column(
        children: [
          customList(
            context,
            ImgConst.listtile1,
            TxtConst.men,
          ),
          customList(
            context,
            ImgConst.listtile2,
            TxtConst.women,
          ),
          customList(
            context,
            ImgConst.listtile3,
            TxtConst.children,
          ),
        ],
      ),
    );
  }
}
