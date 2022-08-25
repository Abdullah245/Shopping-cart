import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  final String imageconst;
  final num w;
  final num h;

  const Images(
      {Key? key, required this.imageconst, required this.w, required this.h})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * w,
      height: MediaQuery.of(context).size.height * h,
      child: Image(
        image: AssetImage(imageconst),
      ),
    );
  }
}
