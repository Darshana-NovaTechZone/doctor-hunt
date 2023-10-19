import 'package:dentit_hunt/widget/mainButton.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

import '../../../../color/colors.dart';
import '../../../../widget/arrow_button.dart';
import '../../../../widget/edit_button.dart';
import '../../booking/select_time.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
          'Settings',
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
          child: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Account settings",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: font_color,
                    fontFamily: 'OpenSans',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.black12,
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: red,
                              child: Icon(
                                Icons.lock,
                                color: white,
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "Change Password",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: font_color,
                                fontFamily: 'OpenSans',
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: font_color,
                          size: 17.sp,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black12,
                height: 0,
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.black12,
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Icon(
                                Icons.notification_add_rounded,
                                color: white,
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "Notification",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: font_color,
                                fontFamily: 'OpenSans',
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: font_color,
                          size: 17.sp,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black12,
                height: 0,
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.black12,
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blueAccent,
                              child: Icon(
                                Icons.crisis_alert,
                                color: white,
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "Statistics",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: font_color,
                                fontFamily: 'OpenSans',
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: font_color,
                          size: 17.sp,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black12,
                height: 0,
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.black12,
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.amberAccent,
                              child: Icon(
                                Icons.person_2,
                                color: white,
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "About us",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: font_color,
                                fontFamily: 'OpenSans',
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: font_color,
                          size: 17.sp,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black12,
                height: 0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "More options",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: font_color,
                        fontFamily: 'OpenSans',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.black12,
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Text messages",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: font_color,
                                fontFamily: 'OpenSans',
                                fontSize: 13.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Switch(
                              activeTrackColor: font_green,
                              activeColor: white,
                              value: true,
                              onChanged: (value) {},
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.black12,
                    height: 0,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.black12,
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Phone calls",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: font_color,
                                fontFamily: 'OpenSans',
                                fontSize: 13.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Switch(
                              activeTrackColor: font_green,
                              activeColor: white,
                              value: true,
                              onChanged: (value) {},
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.black12,
                    height: 0,
                  ),
                  Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.black12,
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Languages",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: font_color,
                                  fontFamily: 'OpenSans',
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "English",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: font_color,
                                      fontFamily: 'OpenSans',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: font_color,
                                    size: 17.sp,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )),
                  Divider(
                    color: Colors.black12,
                    height: 0,
                  ),
                  Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.black12,
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Currency",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: font_color,
                                  fontFamily: 'OpenSans',
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$-USD",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: font_color,
                                      fontFamily: 'OpenSans',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: font_color,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )),
                  Divider(
                    color: Colors.black12,
                    height: 0,
                  ),
                  Material(
                      color: Colors.transparent,
                      child: InkWell(
                          splashColor: Colors.black12,
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Linked accounts",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: font_color,
                                    fontFamily: 'OpenSans',
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Facebook, Google",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: font_color,
                                        fontFamily: 'OpenSans',
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: font_color,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )))
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
