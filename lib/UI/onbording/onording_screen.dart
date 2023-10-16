import 'package:carousel_slider/carousel_slider.dart';
import 'package:dentit_hunt/UI/navigation/naviagation.dart';
import 'package:dentit_hunt/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../widget/mainButton.dart';
import '../login_and_register/login.dart';
import 'onbord_1.dart';
import 'onbord_2.dart';
import 'onbord_3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<Widget> page = [Onboard1(), Onboard2(), Onboard3()];
  int pageIndex = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: [
        Container(
            child: CarouselSlider.builder(
          carouselController: _controller,
          itemCount: page.length,
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              print(index);
              setState(() {
                pageIndex = index;
              });
            },
            reverse: false,
            autoPlay: false,
            height: h,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
          ),
          itemBuilder: (context, index, realIdx) {
            return Container(
              child: Center(child: page[index]),
            );
          },
        )),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: MainButton(
                  onTap: () {
                    if (2 > pageIndex) {
                      _controller.nextPage();
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => login(),
                          ));
                    }

                    if (pageIndex == 2) {}
                  },
                  text: "Get Started",
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Skip",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: black,
                    fontFamily: 'OpenSans',
                    fontSize: 13.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
