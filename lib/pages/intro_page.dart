import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                'lib/images/sneaker_logo.png',
                height: 200,
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            //title
            const Text(
              'Sneaker Hub',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),

            //subtitle
            const Text(
              'Quality and Top Tier Sneakers ',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            //start now button
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20.0),
                 ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 40.0,
                    top: 8.0,
                    right: 40.0,
                    bottom: 8.0,
                  ),
                  child: Text(
                    'Shop Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
