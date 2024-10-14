import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, value, child) => Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'My Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ),
         const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                //get individual shoe

                //return the cart item
              },
            ),
          ),
        ],
      ),
    );
  }
}
