import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sampleproject/landing.dart';

class Order extends StatelessWidget {
  const Order({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Color.fromARGB(255, 235, 129, 53),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/ok.png'),
                radius: 120.0,
                backgroundColor: Colors.grey,
              ),
              Text(
                'ORDER SUCCESFULLY ',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
              Text(
                'PLACED!!',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
              Container(
                padding: EdgeInsets.all(40),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/hourglass.png'),
                            radius: 20.0,
                            backgroundColor: Color.fromARGB(255, 255, 187, 186),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              'Serving Time',
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            Text(
                              '30 mins',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/table.png'),
                            radius: 20.0,
                            backgroundColor: Color.fromARGB(255, 249, 255, 179),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                'Table no',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                              Text(
                                '#012',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Landing()),
                        );
                      },
                      child: Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 235, 129, 53),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            'Cancel Order',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        CupertinoAlertDialog(
                          title: Text('data'),
                          content: Text('data'),
                          actions: [
                            MaterialButton(
                              onPressed: () {},
                              child: Text('ok'),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              child: Text('Cancel'),
                            )
                          ],
                        );
                      },
                      child: Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 235, 129, 53),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            'Done',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
