import 'dart:convert';
import 'dart:developer';

import 'package:dentit_hunt/UI/home/Menu/my_doctor/my_doctors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

import '../../../color/colors.dart';
import '../../../widget/arrow_button.dart';
import '../../../widget/drawer_row.dart';
import 'add_medicol_report/medicol_report.dart';
import 'diagontics_tests/diagontics_test.dart';
import 'help_center/help_center.dart';
import 'medicine_order/medicine_order.dart';
import 'pation_details/pation_details.dart';
import 'privacy_policy/privacy_policy.dart';
import 'settings/setting.dart';

class Menu extends StatefulWidget {
  const Menu({super.key, required this.loging});
  final bool loging;

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool isLoading = false;
  bool tap = false;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: gradient_dark_blue,
      body: SizedBox(
        height: h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20.sp,
                        backgroundImage: AssetImage('assets/unnamed.jpg'),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amidu abeseka",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: white,
                              fontFamily: 'OpenSans',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.call,
                                color: white,
                                size: 18,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "0711602438",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: white,
                                  fontFamily: 'OpenSans',
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.cancel,
                        color: appred,
                        size: 28.sp,
                      ))
                ],
              ),
            ),
            Spacer(),
            SizedBox(
              height: h * 0.7,
              child: Stack(
                children: [
                  SizedBox(
                    width: w,
                    height: h / 1.8,
                  ),
                  Positioned(
                    bottom: h / 8,
                    top: h / 8,
                    right: w / 3.9 - 30,
                    child: Image.asset(
                      'assets/05_Home screen-modified(1).png',
                      width: w / 7,
                      height: h / 2,
                      fit: BoxFit.fill,
                      color: gradient_dark_blue.withOpacity(0.5),
                      colorBlendMode: BlendMode.darken,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    right: -10,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50), bottomLeft: Radius.circular(20)),
                      child: Image.asset(
                        'assets/05_Home screen-modified.png',
                        width: w / 3.9,
                        height: h / 1.7,
                        fit: BoxFit.fill,
                        color: gradient_dark_blue.withOpacity(0.1),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Spacer(),
                        DrawerRow(
                            icon: Icons.person,
                            text: 'My Doctor',
                            on: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 1000),
                                    curve: Curves.easeIn,
                                    child: MyDoctors(),
                                    inheritTheme: true,
                                    ctx: context),
                              );
                            }),
                        Spacer(),
                        DrawerRow(
                            icon: Icons.receipt_long_outlined,
                            text: 'Medical Records',
                            on: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 1000),
                                    curve: Curves.easeIn,
                                    child: AddMedicalReport(),
                                    inheritTheme: true,
                                    ctx: context),
                              );
                            }),
                        Spacer(),
                        DrawerRow(icon: Icons.payment_rounded, text: 'Payments', on: () {}),
                        Spacer(),
                        DrawerRow(
                            icon: Icons.outdoor_grill_rounded,
                            text: 'Medicine Orders',
                            on: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 1000),
                                    curve: Curves.easeIn,
                                    child: MedicineOrder(),
                                    inheritTheme: true,
                                    ctx: context),
                              );
                            }),
                        Spacer(),
                        DrawerRow(
                            icon: Icons.receipt_long_outlined,
                            text: 'Test Bookings',
                            on: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 1000),
                                    curve: Curves.easeIn,
                                    child: DiagonsticsTests(),
                                    inheritTheme: true,
                                    ctx: context),
                              );
                            }),
                        Spacer(),
                        DrawerRow(
                            icon: Icons.details,
                            text: 'Patient Details',
                            on: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 1000),
                                    curve: Curves.easeIn,
                                    child: PatientDetails(),
                                    inheritTheme: true,
                                    ctx: context),
                              );
                            }),
                        Spacer(),
                        DrawerRow(
                            icon: Icons.safety_check_outlined,
                            text: 'Privacy & Policy',
                            on: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 1000),
                                    curve: Curves.easeIn,
                                    child: PrivacyPolicy(),
                                    inheritTheme: true,
                                    ctx: context),
                              );
                            }),
                        Spacer(),
                        DrawerRow(
                            icon: Icons.help,
                            text: 'Help Center',
                            on: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 1000),
                                    curve: Curves.easeIn,
                                    child: HelpCenter(),
                                    inheritTheme: true,
                                    ctx: context),
                              );
                            }),
                        Spacer(),
                        DrawerRow(
                            icon: Icons.settings,
                            text: 'Setting',
                            on: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 1000),
                                    curve: Curves.easeIn,
                                    child: Setting(),
                                    inheritTheme: true,
                                    ctx: context),
                              );
                            }),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                onTap: () {
                  logout();
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: white,
                      size: 15.sp,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Logout",
                      style: TextStyle(fontSize: 14.sp, fontFamily: 'Comfortaa-VariableFont_wght', color: white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  logout() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Cancel",
                style: TextStyle(fontSize: 13.sp, fontFamily: 'Comfortaa-VariableFont_wght', color: font_green, fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "ok",
                style: TextStyle(fontSize: 13.sp, fontFamily: 'Comfortaa-VariableFont_wght', color: font_green, fontWeight: FontWeight.bold),
              ),
            ),
          ],
          content: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
            Text(
              "Logout",
              style: TextStyle(fontSize: 17.sp, fontFamily: 'Comfortaa-VariableFont_wght', color: black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Are you sure want to logout?",
              style: TextStyle(fontSize: 13.sp, fontFamily: 'Comfortaa-VariableFont_wght', color: font_color, fontWeight: FontWeight.bold),
            )
          ]),
        );
      },
    );
  }
}
