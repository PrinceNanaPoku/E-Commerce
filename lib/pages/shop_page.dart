import 'package:flutter/material.dart';

import '../components/shoe_tile.dart';
import '../models/shoe.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Expanded(
          child: ListView.builder(itemBuilder: (context, index) {
            Shoe shoe = const Shoe(
                name: 'Air Jordan',
                price: '25',
                imagePath: 'lib/images/sneaker_1.jpg',
                description: 'cool sneaker');
            return ShoeTile(shoe: shoe);
          }),
        ),
      ],
    );
  }
}
