import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of items for sale
  List<Shoe> shoeShop = [
    const Shoe(
      name: 'Air Jordan 1',
      price: '245',
      imagePath: 'lib/images/jordan1.avif',
      description:
          'Iconic high-top design, premium leather and visible air unit for cushioning',
    ),
    const Shoe(
      name: 'Nike Zoom',
      price: '135',
      imagePath: 'lib/images/NikeZoom.jpg',
      description:
          'Light weight responsive design for quick movements. Cushioning and support for comfort. Breathable material for cool, dry feet',
    ),
    const Shoe(
      name: 'Air Jordan 4',
      price: '200',
      imagePath: 'lib/images/Jordan4.webp',
      description:
          'Classic design with visible air unit and plastic wing accents. Lightweight, breathable material for comfort',
    ),
    const Shoe(
      name: 'Curry 12',
      price: '150',
      imagePath: 'lib/images/curry.jpg',
      description:
          'Designed for sharp shooters. Lightweight, responsive Micro G cushioning. Dynamic fit system for secure support',
    ),
    const Shoe(
      name: 'Lebron 21',
      price: '170',
      imagePath: 'lib/images/lebron 21.webp',
      description:
          'Designed for strategic support and explosive jump. Maximum cushioning with Air Max unit and Zoom Air. Lightweight, breathable upper for quick movement',
    ),
    const Shoe(
      name: 'Adidas Topanga',
      price: '120',
      imagePath: 'lib/images/adidastopanga.jpg',
      description:
          'Soft, premium suede upper. Cushioned insole for comfort. Timeless style meets modern comfort',
    ),
    const Shoe(
      name: 'KD Trey 16',
      price: '145',
      imagePath: 'lib/images/KDTrey16.webp',
      description:
          'Lightweight responsive design. Enchanced cushioning for explosive jumps. Dynamic support for sharp cuts',
    ),
    const Shoe(
      name: 'Nike Dunk Low',
      price: '110',
      imagePath: 'lib/images/nike dunks.png',
      description:
          'Low profile silhouette. Premium leather material. Versatile colorways',
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
