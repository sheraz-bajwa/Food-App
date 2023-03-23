import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sampleproject/cart.dart';
import 'package:sampleproject/order.dart';

class Allcart extends StatelessWidget {
  const Allcart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Cart(
      image: 'assets/Tuscan-chicken.jpg',
      text1: 'Creamy tusan Chiken',
      text2: 'Description',
      text3: 'Brightened up your chicken dinner',
      text4: 'with this amazing recipe',
      text5: 'Price',
      price: ' EUR 35',
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Order()),
        );
      },
    ));
  }
}

class Allcart1 extends StatelessWidget {
  const Allcart1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Cart(
      image: 'assets/burger.jpg',
      text1: 'Beef Burger',
      text2: 'Description',
      text3: 'Brightened up your Beef dinner',
      text4: 'with this amazing recipe',
      text5: 'Price',
      price: ' EUR 67',
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Order()),
        );
      },
    ));
  }
}

class Allcart2 extends StatelessWidget {
  const Allcart2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Cart(
      image: 'assets/istock.jpg',
      text1: 'Fried Vegitables',
      text2: 'Description',
      text3: 'Brightened up your dinner with Fried vegitables',
      text4: 'with this amazing recipe',
      text5: 'Price',
      price: ' EUR 28',
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Order()),
        );
      },
    ));
  }
}
