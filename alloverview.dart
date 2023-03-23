import 'package:flutter/material.dart';

class Aoverview extends StatelessWidget {
  const Aoverview(
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
      //backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 252, 166, 37),
        title: Text(
          'Order',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: 100.0,
                backgroundColor: Colors.grey,
              ),
              Row(
                children: [
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
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
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
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Text(
                              text4,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
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
                ],
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Customization Box',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400)),
                    fillColor: Colors.grey.shade200,
                    filled: true),
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
                      'Add to cart',
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
      ),
    );
  }
}
