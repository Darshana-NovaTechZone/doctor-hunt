import 'package:dentit_hunt/UI/onbording/onbord_1.dart';
import 'package:flutter/material.dart';

import '../onbording/onbord_2.dart';
import '../onbording/onording_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingScreen(),
        )));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: h,
        width: w,
        child: Stack(children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 214, 255, 248), blurRadius: 100, offset: Offset(0, 0), spreadRadius: 100, // Shadow position
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 214, 255, 248), blurRadius: 100, offset: Offset(0, 0), spreadRadius: 70, // Shadow position
                  ),
                ],
              ),
            ),
          ),
          Center(child: SizedBox(height: h / 6, child: Image.asset('assets/logo.png')))
        ]),
      ),
    );
  }
}
