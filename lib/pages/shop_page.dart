import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/shoe_tile.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addToCart(shoe);

    //alert the user, shoe successfully added
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Successfully added!'),
        content: Text('Check your cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        //search bar
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey[500]),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey[400],
                )
              ],
            ),
          ),
          //message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Everyone can fly but some fly higher',
              style: TextStyle(
                color: Colors.grey[400],
              ),
            ),
          ),
          //Hot picks

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hot Picks 🔥',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  //get shoe from shoe list
                  Shoe shoe = value.getShoeList()[index];
                  //return shoe
                  return ShoeTile(
                    shoe: shoe,
                    onTap: () => addShoeToCart(shoe),
                  );
                }),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: Divider(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
