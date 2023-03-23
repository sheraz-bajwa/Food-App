import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sampleproject/landing.dart';
import 'package:sampleproject/login.dart';
import 'package:sampleproject/slide.dart';

class MyWidget5 extends StatefulWidget {
  const MyWidget5({super.key});

  @override
  State<MyWidget5> createState() => _MyWidget5State();
}

class _MyWidget5State extends State<MyWidget5> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => slide()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/spash.jpeg'),
        fit: BoxFit.cover,
        opacity: 0.9,
      )),
    );
  }
}
