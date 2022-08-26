// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shopping_cart/Constants/text.dart';

import 'addtocartfunc.dart';
import 'customDialog.dart';

class CustomCards extends StatefulWidget {
  var img;
  var txt;
  var a;
  CustomCards({Key? key, required this.img, required this.txt, required this.a})
      : super(key: key);

  @override
  State<CustomCards> createState() => _CustomCardsState();
}

class _CustomCardsState extends State<CustomCards> {
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.42,
            height: MediaQuery.of(context).size.height * 0.22,
            child: Image(
              image: AssetImage(widget.img),
            ),
          ),
          Text(
            widget.txt,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Price ${widget.a}",
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.32,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Card(
                    color: Colors.blue,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            iconSize: 18,
                            onPressed: () {
                              setState(() {
                                quantity--;
                              });
                            },
                          ),
                          Text(
                            quantity.toString(),
                            style: const TextStyle(fontSize: 15),
                          ),
                          IconButton(
                            icon: const Icon(Icons.add),
                            iconSize: 18,
                            onPressed: () {
                              setState(() {
                                quantity++;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: IconButton(
                    color: Colors.blue,
                    onPressed: () {
                      if (quantity != 0) {
                        addcart(context, widget.txt, widget.a, quantity);
                        setState(() {
                          quantity = 0;
                        });
                      } else {
                        showAlertDialog(
                            context, TxtConst.alert, TxtConst.enterquantity);
                      }
                    },
                    icon: const Icon(
                      Icons.add,
                      size: 20,
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
}
