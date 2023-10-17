import 'package:dentit_hunt/widget/mainButton.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../color/colors.dart';
import '../../../../widget/arrow_button.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        title: Text(
          'Help center',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
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
        child: SizedBox(
          height: h,
          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: EdgeInsets.only(left: 12),
                alignment: Alignment.centerLeft,
                child: Text(
                  "I have an issue with",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: font_green,
                    fontFamily: 'OpenSans',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                height: h / 13,
                width: w,
                decoration: BoxDecoration(color: white),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.black12,
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: h / 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Booking a new Appointment",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: font_color,
                          fontFamily: 'OpenSans',
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: font_color,
                        size: 18.sp,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.black12,
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: h / 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Existing Appointment",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: font_color,
                          fontFamily: 'OpenSans',
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: font_color,
                        size: 18.sp,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.black12,
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: h / 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Online consultations",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: font_color,
                          fontFamily: 'OpenSans',
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: font_color,
                        size: 18.sp,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.black12,
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: h / 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Feedbacks",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: font_color,
                          fontFamily: 'OpenSans',
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: font_color,
                        size: 18.sp,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.black12,
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: h / 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Medicine orders",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: font_color,
                          fontFamily: 'OpenSans',
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: font_color,
                        size: 18.sp,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.black12,
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: h / 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Diagnostic Test",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: font_color,
                          fontFamily: 'OpenSans',
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: font_color,
                        size: 18.sp,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.black12,
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: h / 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Health plans",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: font_color,
                          fontFamily: 'OpenSans',
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: font_color,
                        size: 18.sp,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.black12,
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: h / 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My account and Prato Drive",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: font_color,
                          fontFamily: 'OpenSans',
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: font_color,
                        size: 18.sp,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.black12,
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: h / 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Have a feature in mind",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: font_color,
                          fontFamily: 'OpenSans',
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: font_color,
                        size: 18.sp,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.black12,
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: h / 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Other issues",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: font_color,
                          fontFamily: 'OpenSans',
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: font_color,
                        size: 18.sp,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
