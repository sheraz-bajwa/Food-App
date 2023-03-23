import 'dart:ui';

import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.text5,
      required this.price,
      required this.onTap});

  final String image;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String price;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          child: Row(children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
            height: 100,
            width: 110,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
            flex: 2,
            child: Container(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    text2,
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.grey[300]),
                  ),
                  Text(
                    text3,
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.black),
                  ),
                  Text(
                    text4,
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.black),
                  ),
                  Row(
                    children: [
                      Text(
                        text5,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.amber[900]),
                      ),
                    ],
                  ),
                ],
              ),
            )),
        Expanded(
            child: Center(
          child: Container(
            child: Icon(Icons.favorite_border),
          ),
        ))
      ])),
    );
  }
}
