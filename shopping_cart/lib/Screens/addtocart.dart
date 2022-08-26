import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shopping_cart/Constants/text.dart';
import '../Functions/addtocartfunc.dart';
import '../Functions/deletecart.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final TextEditingController _textFieldController = TextEditingController();
  int quantity = 0;
  late String valueText;
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
            Expanded(
              child: FutureBuilder<QuerySnapshot>(
                future: addToCart.get(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView(
                        shrinkWrap: true,
                        children: snapshot.data!.docs
                            .map((DocumentSnapshot document) {
                          Map<String, dynamic> abc =
                              document.data()! as Map<String, dynamic>;
                          return ListTile(
                            title: Text(abc['Product name']),
                            subtitle: Text(abc['Product price'].toString()),
                            leading: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(TxtConst.quantity),
                                Text(abc['quantity'].toString()),
                              ],
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                setState(() {
                                  deleteUser(document.id);
                                });
                              },
                              icon: const Icon(Icons.delete),
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
            ),
          ],
        ),
      ),
    );
  }
}
