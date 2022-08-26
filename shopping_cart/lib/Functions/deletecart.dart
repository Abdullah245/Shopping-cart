import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> deleteUser(docId) {
  CollectionReference deleteuser =
      FirebaseFirestore.instance.collection('Add To Cart');
  return deleteuser
      .doc(docId)
      .delete()
      .then((value) => print("User Deleted $docId"))
      .catchError((error) => print("Failed to delete user: $error"));
}
