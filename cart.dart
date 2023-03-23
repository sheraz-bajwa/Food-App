import 'package:flutter/material.dart';
import 'package:sampleproject/allcart.dart';

class Cart extends StatelessWidget {
  const Cart(
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 235, 129, 53),
        title: Text(
          'Cart',
          style: TextStyle(
              fontWeight: FontWeight.w600, letterSpacing: 1, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                child: Row(children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover),
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
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[300]),
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
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
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
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 255, 187, 186),
              ),
              height: 50,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    height: 40,
                    width: 50,
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Add Item',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 215, 254, 197),
              ),
              height: 50,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    height: 40,
                    width: 50,
                  ),
                  Text(
                    'Add Item',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 217, 217, 217),
                  borderRadius: BorderRadius.circular(10)),
              height: 200,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.orange),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'EUR 0',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.orange),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.orange),
                      )
                    ],
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: onTap,
              child: Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 129, 53),
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                  child: Text(
                    'Proceed Order',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
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
