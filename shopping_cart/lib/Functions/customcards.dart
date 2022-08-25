import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shopping_cart/Functions/customDialog.dart';

import 'addtocartfunc.dart';

customcards(context, img, txt, a) {
  return Card(
    child: Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.42,
          height: MediaQuery.of(context).size.height * 0.22,
          child: Image(
            image: AssetImage(img),
          ),
        ),
        Text(
          txt,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Price $a",
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Details",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    addcart(context, txt, a);
                  },
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
