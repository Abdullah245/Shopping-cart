import 'package:flutter/material.dart';
import 'package:shopping_cart/Constants/text.dart';

showAlertDialog(BuildContext context, txt1, txt2) {
  Widget okButton = ElevatedButton(
    child: Text(TxtConst.ok),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text(txt1),
    content: Text(txt2),
    actions: [
      okButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
