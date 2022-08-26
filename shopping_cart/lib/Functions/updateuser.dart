import 'package:cloud_firestore/cloud_firestore.dart';
Future<void> updateUser(context, docID, t) {
  CollectionReference updateusers =
      FirebaseFirestore.instance.collection('Add To Cart');
  return updateusers
      .doc(docID)
      .update({'quantity': t})
      .then((value) => print("User Updated"))
      .catchError((error) => print("Failed to update user: $error"));
}
