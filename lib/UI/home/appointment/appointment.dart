import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

import '../../../../color/colors.dart';
import '../../../../widget/arrow_button.dart';
import '../../../../widget/edit_button.dart';
import '../../../widget/mainButton.dart';
import 'Appointment2.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  ScrollController _controller = ScrollController();
  List who = [
    {'name': 'babe', 'img': 'assets/babe.jpg'},
    {'name': 'babe', 'img': 'assets/babe.jpg'},
    {'name': 'my self', 'img': 'assets/man.jpg'},
    {'name': 'mother', 'img': 'assets/mo.jpg'},
  ];
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        title: Text('Appointment'),
        leading: ArrowButton(
          onTap: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/back.jpg'), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          controller: _controller,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {},
                  child: Container(
                    width: w,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(15), boxShadow: [
                      BoxShadow(color: Color.fromARGB(255, 64, 64, 64).withOpacity(.05), offset: Offset(0, 0), blurRadius: 20, spreadRadius: 5)
                    ]),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Row(children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  height: h / 8,
                                  width: h / 8,
                                  child: Image.asset(
                                    'assets/d.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                  decoration: BoxDecoration(color: red, borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Dr.sahnel",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Specialist Cardiologist",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star_rounded,
                                            color: Colors.yellow,
                                            size: 15.sp,
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            color: Colors.yellow,
                                            size: 15.sp,
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            color: Colors.yellow,
                                            size: 15.sp,
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            color: Colors.yellow,
                                            size: 15.sp,
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            color: Colors.yellow,
                                            size: 15.sp,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "\$ 28.00/hr",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'OpenSans',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                            ]),
                          ],
                        ),
                        Positioned(right: 0, child: IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Appointment For",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                height: h / 13,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Color.fromARGB(255, 167, 162, 162)),
                    hintText: "Patient Name",
                    fillColor: white,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                height: h / 13,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Color.fromARGB(255, 167, 162, 162)),
                    hintText: "Contact Number",
                    fillColor: white,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Who is this patient?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                height: h / 4,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: who.length,
                  itemBuilder: (context, index) {
                    return index == 0
                        ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.add,
                                        size: 25.sp,
                                        color: font_green,
                                      ),
                                      Text(
                                        "Add",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: font_green,
                                          fontFamily: 'OpenSans',
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                  height: h / 6,
                                  width: h / 7,
                                  decoration: BoxDecoration(color: font_green.withOpacity(0.2), borderRadius: BorderRadius.circular(10)),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.normal,
                                  ),
                                )
                              ],
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Container(
                                    height: h / 6,
                                    width: h / 7,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage(who[index]['img']), fit: BoxFit.cover),
                                        color: font_green.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(10)),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    who[index]['name'],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                  },
                ),
              ),
            ]),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: MainButton(
          onTap: () {
            Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.rightToLeft,
                  duration: Duration(milliseconds: 1000),
                  curve: Curves.easeIn,
                  child: Appointment2(),
                  inheritTheme: true,
                  ctx: context),
            );
          },
          text: "NEXT",
        ),
      ),
    );
  }
}
