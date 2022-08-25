import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopping_cart/Constants/text.dart';
import 'package:shopping_cart/Functions/customDialog.dart';

CollectionReference addToCart =
    FirebaseFirestore.instance.collection('Add to Cart');

Future<void> addcart(context, t1, t2) {
  return addToCart
      .add({
        'Product name': t1,
        'Product price': t2,
        'uid': FirebaseAuth.instance.currentUser?.uid
      })
      .then(
        (value) => showAlertDialog(
          context,
          TxtConst.congrats,
          TxtConst.msg1,
        ),
      )
      .catchError((error) => print("Failed to add user: $error"));
}
