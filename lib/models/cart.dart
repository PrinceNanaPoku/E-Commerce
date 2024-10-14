import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of items for sale
  List<Shoe> shoeShop = [
    const Shoe(
      name: 'Air Jordan',
      price: '245',
      imagePath: 'lib/images/sneaker_1.jpg',
      description: 'Cool sneaker',
    ),
    const Shoe(
      name: 'Nike Zoom',
      price: '250',
      imagePath: 'lib/images/sneaker_2.jpg',
      description: 'Dope sneakers',
    ),
    const Shoe(
      name: 'Jordan 4',
      price: '300',
      imagePath: 'lib/images/sneaker_3.jpg',
      description: 'Best sneaker',
    ),
    const Shoe(
      name: 'Curry Flow',
      price: '250',
      imagePath: 'lib/images/sneaker_4.jpg',
      description: 'Best basketball shoes',
    ),
    const Shoe(
      name: 'Nike Lebron',
      price: '240',
      imagePath: 'lib/images/sneaker_5.jpg',
      description: 'Best affordable basketball shoes',
    ),
    const Shoe(
      name: 'Anta',
      price: '200',
      imagePath: 'lib/images/sneaker_6.jpg',
      description: 'Cool sneakers',
    ),
  ];

  //list of itmes in user cart
  List<Shoe> userCart = [];

  //get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
