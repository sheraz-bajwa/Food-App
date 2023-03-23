import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:sampleproject/signin.dart';
import 'package:sampleproject/signup.dart';

class Alogin extends StatelessWidget {
  const Alogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/whatapp.jpeg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(200),
                        bottomRight: Radius.circular(200)),
                    //color: Colors.amber
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  // ignore: sort_child_properties_last
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Login / SignUp to Continue',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            /*OutlinedButton(
                              onPressed: () {
                                
                              },
                              child: Text(
                                'LOGIN',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),*/
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Signin()),
                                );
                              },
                              child: Container(
                                height: 35,
                                width: 80,
                                decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(color: Colors.orange),
                                        left: BorderSide(color: Colors.orange),
                                        right: BorderSide(color: Colors.orange),
                                        bottom:
                                            BorderSide(color: Colors.orange))),
                                child: Center(
                                    child: Text(
                                  'LOGIN',
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                )),
                              ),
                            ),
                            Divider(
                              height: 60.0,
                              color: Colors.grey[800],
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              color: Colors.black,
                              width: 2,
                              height: 50,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Signup()),
                                );
                              },
                              child: Container(
                                height: 35,
                                width: 80,
                                decoration: BoxDecoration(color: Colors.orange),
                                child: Center(
                                    child: Text(
                                  'SIGNUP',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  width: double.infinity,
                ))
          ],
        ),
      ),
    );
  }
}
