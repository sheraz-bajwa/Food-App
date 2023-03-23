import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sampleproject/landing.dart';
import 'package:sampleproject/login.dart';
import 'package:slide_to_act/slide_to_act.dart';

class slide extends StatelessWidget {
  const slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 255, 187, 186),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Container(
                  //color: Color.fromARGB(255, 255, 187, 186),
                  child: Center(child: Lottie.asset('assets/food.json'))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: SlideAction(
                  onSubmit: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Alogin()),
                    );
                  }),
                  innerColor: Color.fromARGB(255, 241, 209, 209),
                  outerColor: Color.fromARGB(255, 228, 143, 142),
                  submittedIcon: Icon(
                    Icons.arrow_forward_outlined,
                  ),
                  text: 'Slide to continue',
                  //height: 50,
                  //sliderButtonIconSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
