import 'package:flutter/material.dart';

class QuantityInput extends StatefulWidget {
  const QuantityInput({Key? key}) : super(key: key);

  @override
  State<QuantityInput> createState() => _QuantityInputState();
}

class _QuantityInputState extends State<QuantityInput> {
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
