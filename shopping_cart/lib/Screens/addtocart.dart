import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopping_cart/Constants/text.dart';
import '../Functions/addtocartfunc.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              TxtConst.cart,
              style: const TextStyle(fontSize: 24),
            ),
            FutureBuilder<QuerySnapshot>(
              future: addToCart
                  .where('uid',
                      isEqualTo: FirebaseAuth.instance.currentUser?.uid)
                  .get(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children:
                          snapshot.data!.docs.map((DocumentSnapshot document) {
                        Map<String, dynamic> abc =
                            document.data()! as Map<String, dynamic>;
                        return ListTile(
                          title: Text(abc['Product name']),
                          subtitle: Text(abc['Product price'].toString()),
                          trailing: IconButton(
                            onPressed: () {
                              setState(() {
                                CollectionReference addToCart =
                                    FirebaseFirestore.instance
                                        .collection('Add To Cart');

                                Future<void> deleteUser(docId) {
                                  return addToCart
                                      .doc(docId)
                                      .delete()
                                      .then((value) => print("User Deleted"))
                                      .catchError((error) => print(
                                          "Failed to delete user: $error"));
                                }
                              });
                            },
                            icon: Icon(Icons.delete),
                          ),
                        );
                      }).toList());
                } else {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
