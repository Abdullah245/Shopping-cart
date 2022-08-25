import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Functions/addtocartfunc.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Cart"),
              FutureBuilder<QuerySnapshot>(
                future: addToCart
                    .where('uid',
                        isEqualTo: FirebaseAuth.instance.currentUser?.uid)
                    .get(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView(
                        children: snapshot.data!.docs
                            .map((DocumentSnapshot document) {
                      Map<String, dynamic> abc =
                          document.data()! as Map<String, dynamic>;
                      return ListTile(
                        title: Text(abc['Product name']),
                        subtitle: Text(abc['Product price']),
                      );
                    }).toList());
                  } else {
                    return Center(
                        child: CircularProgressIndicator(
                      color: Colors.amber,
                    ));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
