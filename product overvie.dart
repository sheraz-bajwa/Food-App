import 'package:flutter/material.dart';
import 'package:sampleproject/allcart.dart';
import 'package:sampleproject/alloverview.dart';

class Overvie extends StatelessWidget {
  const Overvie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Aoverview(
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
            MaterialPageRoute(builder: (context) => const Allcart()),
          );
        },
      ),
    );
  }
}

class Overvie1 extends StatelessWidget {
  const Overvie1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Aoverview(
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
            MaterialPageRoute(builder: (context) => const Allcart1()),
          );
        },
      ),
    );
  }
}

class Overvie2 extends StatelessWidget {
  const Overvie2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Aoverview(
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
            MaterialPageRoute(builder: (context) => const Allcart2()),
          );
        },
      ),
    );
  }
}
