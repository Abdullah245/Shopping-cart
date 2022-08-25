import 'package:flutter/material.dart';

import '../Screens/men.dart';

customList(context, img, txt) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Men(),
          ),
        );
      },
      child: Card(
        elevation: 5,
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.15,
            child: Image(
              image: AssetImage(img),
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.15,
              alignment: Alignment.center,
              child: Text(
                txt,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ]),
      ),
    ),
  );
}
