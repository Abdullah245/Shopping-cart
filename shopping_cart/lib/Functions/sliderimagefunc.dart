import 'package:flutter/material.dart';

sliderContainer(context, img) {
  return Container(
    width: MediaQuery.of(context).size.width * 1,
    height: MediaQuery.of(context).size.height * 0.4,
    margin: const EdgeInsets.all(6.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      image: DecorationImage(
        image: AssetImage(img),
        fit: BoxFit.cover,
      ),
    ),
  );
}
