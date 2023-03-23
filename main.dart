// ignore_for_file: unnecessary_new
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sampleproject/about.dart';
import 'package:sampleproject/allcart.dart';
import 'package:sampleproject/bottomnavigation.dart';
import 'package:sampleproject/cart.dart';
import 'package:sampleproject/landing.dart';
import 'package:sampleproject/login.dart';
import 'package:sampleproject/order.dart';
import 'package:sampleproject/product%20overvie.dart';
import 'package:sampleproject/signin.dart';
import 'package:sampleproject/signup.dart';
import 'package:sampleproject/slide.dart';
import 'package:sampleproject/splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget5(),
    );
  }
}
