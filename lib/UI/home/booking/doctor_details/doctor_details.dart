import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

import '../../../../color/colors.dart';
import '../../../../widget/arrow_button.dart';
import '../../../../widget/edit_button.dart';
import '../comment/comment.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  ScrollController _controller = ScrollController();
  List slot = [
    {'date': 'Today, 23 Feb', 's': 'No slots available'},
    {'date': 'Tomorrow, 24 Feb', 's': '9 slots available'},
    {'date': 'Sunday,24 Feb', 's': '2 slots available'},
    {'date': 'Monday, 27 Feb', 's': '1slots available'},
    {'date': 'Tuesday, 28 Feb', 's': '1 slots available'}
  ];
  List time = ['1:00', '1:30', '2:00', '2:30', '3:00', '3:30'];
  List time2 = ['2:00', '2:30', '4:00', '4:30', '3:00', '3:30'];
  int selectedIndex = 0;
  int selectedAfternoon = 0;
  int selectedEvening = 0;
  String day = 'Today, 23 Feb';
  String s = 'No slots available';
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        title: Text('Doctor Details'),
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: EditButton(
                                fontSize: 13.sp,
                                h: h / 15,
                                onTap: () {},
                                text: "Book Now",
                                w: w / 2,
                              ),
                            )
                          ],
                        ),
                        Positioned(right: 0, child: IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: w / 4,
                        padding: EdgeInsets.all(12),
                        child: Column(mainAxisSize: MainAxisSize.min, children: [
                          Text(
                            "500",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Running",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black38,
                              fontFamily: 'OpenSans',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ]),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Color.fromARGB(31, 193, 183, 183), borderRadius: BorderRadius.circular(15)),
                      ),
                      Container(
                        width: w / 4,
                        padding: EdgeInsets.all(12),
                        child: Column(mainAxisSize: MainAxisSize.min, children: [
                          Text(
                            "500",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Ongoing",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black38,
                              fontFamily: 'OpenSans',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ]),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Color.fromARGB(31, 193, 183, 183), borderRadius: BorderRadius.circular(15)),
                      ),
                      Container(
                        width: w / 4,
                        padding: EdgeInsets.all(12),
                        child: Column(mainAxisSize: MainAxisSize.min, children: [
                          Text(
                            "700",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Patient",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black38,
                              fontFamily: 'OpenSans',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ]),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Color.fromARGB(31, 193, 183, 183), borderRadius: BorderRadius.circular(15)),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(15)),
                ),
              ),
              Text(
                "Services",
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
              Row(
                children: [
                  Text(
                    "1.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: font_green,
                      fontFamily: 'OpenSans',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Flexible(
                    child: Text(
                      "Patient care should be the number one priority",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 11.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "2.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: font_green,
                      fontFamily: 'OpenSans',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Flexible(
                    child: Text(
                      "if you run practice you know how frustrating",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 11.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "3.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: font_green,
                      fontFamily: 'OpenSans',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Flexible(
                    child: Text(
                      "That's why some of appointment reminder system",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 11.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              ClipRRect(borderRadius: BorderRadius.circular(20), child: Image.asset('assets/map.jpg')),
              SizedBox(
                height: 12,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
