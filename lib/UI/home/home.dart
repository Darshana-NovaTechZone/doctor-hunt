import 'package:dentit_hunt/UI/home/favourite_doctors/favourite_doctors.dart';
import 'package:dentit_hunt/UI/home/popular_doctos/popular_doctors.dart';
import 'package:dentit_hunt/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

import 'find_doctors/find_doctors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List vedio = [
    'assets/download.jpeg',
    'assets/download.jpeg',
    'assets/download (1).jpeg',
    'assets/download (2).jpeg',
    'assets/istockphoto-1470505351-170667a.webp'
  ];
  List ig = [
    {'img': 'assets/icons8-dental-50.png', 'color': Colors.red},
    {'img': 'assets/icons8-eye-48.png', 'color': const Color.fromARGB(255, 67, 244, 54)},
    {'img': 'assets/icons8-stomach-50.png', 'color': const Color.fromARGB(255, 54, 190, 244)},
    {'img': 'assets/icons8-body-64.png', 'color': const Color.fromARGB(255, 244, 54, 200)},
    {'img': 'assets/icons8-heart-60.png', 'color': const Color.fromARGB(255, 244, 209, 54)},
    {'img': 'assets/icons8-dental-50.png', 'color': const Color.fromARGB(255, 165, 54, 244)},
  ];

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color.fromARGB(31, 241, 236, 236),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                AnimationLimiter(
                  child: AnimationConfiguration.synchronized(
                    child: SlideAnimation(
                      duration: Duration(milliseconds: 800),
                      verticalOffset: -100.0,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(12),
                          height: h / 4,
                          width: w,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [font_green, Color.fromARGB(255, 108, 178, 110)]),
                              color: font_green,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SlideAnimation(
                                horizontalOffset: 100,
                                duration: Duration(milliseconds: 1200),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "hi alaecsa",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: white,
                                        fontFamily: 'OpenSans',
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Text(
                                      "Find your doctor",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: white,
                                        fontFamily: 'OpenSans',
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CircleAvatar(
                                radius: 25.sp,
                                backgroundImage: AssetImage('assets/unnamed.jpg'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: h / 4 - 30,
                  left: 0,
                  right: 0,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        AnimationConfiguration.synchronized(
                          child: SlideAnimation(
                            verticalOffset: 50.0,
                            duration: Duration(milliseconds: 1200),
                            child: FadeInAnimation(
                              curve: Curves.easeInOut,
                              duration: Duration(milliseconds: 500),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: w / 15),
                                child: SizedBox(
                                  height: h / 13,
                                  child: TextField(
                                    readOnly: true,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageTransition(
                                            type: PageTransitionType.fade,
                                            duration: Duration(milliseconds: 1200),
                                            child: FindDoctors(),
                                            inheritTheme: true,
                                            ctx: context),
                                      );
                                    },
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(Icons.close),
                                      prefixIcon: Icon(Icons.search),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      filled: true,
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                      hintText: "Search",
                                      fillColor: white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      "Live doctors",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h / 5,
                    child: ListView.builder(
                      itemCount: vedio.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    vedio[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                height: h / 5.5,
                                width: w / 4,
                                decoration: BoxDecoration(color: red, borderRadius: BorderRadius.circular(15)),
                              ),
                              Positioned(
                                right: 0,
                                left: 0,
                                bottom: 0,
                                top: 0,
                                child: Icon(
                                  Icons.play_circle_outlined,
                                  color: white,
                                  size: 30.sp,
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 3),
                                  color: red,
                                  child: Row(children: [
                                    Icon(
                                      Icons.circle,
                                      size: 8,
                                      color: white,
                                    ),
                                    Text(
                                      " Live ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: white,
                                        fontFamily: 'OpenSans',
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: h / 7,
                    child: ListView.builder(
                      itemCount: ig.length,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: h / 7,
                            width: w / 6,
                            child: SizedBox(
                              height: h / 10,
                              width: w / 10,
                              child: Image.asset(
                                ig[index]['img'],
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/Virtual_Background-Neutral.jpg'),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(ig[index]['color'].withOpacity(0.4), BlendMode.darken)),
                                color: red,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular doctor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PopularDoctors(),
                                ));
                          },
                          child: Text(
                            "See all",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 11.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h / 3,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: h / 3,
                            width: w / 2.5,
                            decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(15)),
                            child: Column(children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                                child: Container(
                                  child: Image.asset(
                                    'assets/d.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                  height: h / 5,
                                  width: w / 2.5,
                                  decoration: BoxDecoration(color: red, borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                              Text(
                                "Dr. Fillerup Grab",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Dr. Fillerup Grab",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 16.sp,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 16.sp,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 16.sp,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 16.sp,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 16.sp,
                                  ),
                                ],
                              )
                            ]),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Feature doctor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FavoriteDoctors(),
                                ));
                          },
                          child: Text(
                            "See all",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 11.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h / 4,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: w / 3,
                            decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(15)),
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.favorite_border,
                                      size: 16.sp,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 16.sp,
                                        ),
                                        Text(
                                          "3.0",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'OpenSans',
                                            fontSize: 8.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(8),
                                width: w / 6,
                                height: w / 6,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: AssetImage('assets/o1.jpg'), fit: BoxFit.cover),
                                ),
                              ),
                              Text(
                                "Dr. Fillerup Grab",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Dr. Fillerup Grab",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ]),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 250,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
