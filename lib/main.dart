import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/cart.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(const Ecommerce());
}

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => Cart(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
