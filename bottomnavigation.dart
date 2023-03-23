import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:sampleproject/about.dart';
import 'package:sampleproject/product%20overvie.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Color.fromARGB(255, 244, 250, 184),
      index: 2,
      items: [
        GestureDetector(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const About()),
              );
            }),
            child: Icon(Icons.person_outline, size: 30)),
        Icon(Icons.favorite_border_outlined, size: 30),
        Icon(
          Icons.home,
          size: 30,
          color: Colors.red,
        ),
        Icon(Icons.location_on_outlined, size: 30),
        Icon(Icons.list, size: 30),
      ],
    );
  }
}
