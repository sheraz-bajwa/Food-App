import 'package:flutter/material.dart';
import 'package:sampleproject/bottomnavigation.dart';
import 'package:sampleproject/drawer.dart';
import 'package:sampleproject/product%20overvie.dart';
import 'package:sampleproject/singleproduct.dart';
import 'package:sampleproject/slide.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Container(
          height: 30,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 222, 222, 222),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Search",
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 15),
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.shopping_cart,
            color: Color.fromARGB(255, 90, 90, 90),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.add_alert,
            color: Color.fromARGB(255, 90, 90, 90),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/break.jpg'),
                            fit: BoxFit.cover)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          //color: Colors.amber,
                          height: 100,
                          width: 100,
                          child: Image(image: AssetImage('assets/10.png')),
                        )
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'view all',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 255, 187, 186),
                          ),
                          height: 80,
                          width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Image.asset(
                                  'assets/ramen.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                'Food',
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 249, 255, 179),
                          ),
                          height: 80,
                          width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Image.asset(
                                  'assets/panna-cotta.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                'Desserts',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 214, 242, 254),
                          ),
                          height: 80,
                          width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Image.asset(
                                  'assets/drink.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                'Drinks',
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(
                              255,
                              214,
                              255,
                              197,
                            ),
                          ),
                          height: 80,
                          width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Image.asset(
                                  'assets/salad.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                'Salad',
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pink[200],
                          ),
                          height: 80,
                          width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Image.asset(
                                  'assets/hamburger.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                'Burgers',
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'view all',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Product(
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
                      MaterialPageRoute(builder: (context) => const Overvie()),
                    );
                  },
                ),
                Divider(),
                Product(
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
                      MaterialPageRoute(builder: (context) => const Overvie1()),
                    );
                  },
                ),
                Divider(),
                Product(
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
                      MaterialPageRoute(builder: (context) => const Overvie2()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
