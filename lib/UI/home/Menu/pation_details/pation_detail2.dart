import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:dentit_hunt/widget/mainButton.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

import '../../../../color/colors.dart';
import '../../../../widget/arrow_button.dart';

class PatientDetails2 extends StatefulWidget {
  const PatientDetails2({super.key});

  @override
  State<PatientDetails2> createState() => _PatientDetails2State();
}

class _PatientDetails2State extends State<PatientDetails2> {
  ScrollController _controller = ScrollController();
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        title: Text(
          'Patient Details',
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
        child: SingleChildScrollView(
          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Step 1/4",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 4,
                          width: w / 1.5,
                          decoration: BoxDecoration(color: font_green.withOpacity(0.4), borderRadius: BorderRadius.circular(10)),
                        ),
                        Container(
                          height: 4,
                          width: w / 4,
                          decoration: BoxDecoration(color: font_green, borderRadius: BorderRadius.circular(10)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: w,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Patient's Name",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 12.sp,
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
                        hintStyle: TextStyle(color: font_color),
                        hintText: "my name",
                        fillColor: white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Age",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  DropdownDatePicker(
                    dayFlex: 2,
                    textStyle: TextStyle(fontSize: 12.sp),
                    inputDecoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12, width: 0.5),
                        ),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))), // optional

                    onChangedDay: (value) => print('onChangedDay: $value'),
                    onChangedMonth: (value) => print('onChangedMonth: $value'),
                    onChangedYear: (value) => print('onChangedYear: $value'),
                    boxDecoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black12, width: 0.2)), // optional
                    showDay: true, // optional
                    // dayFlex: 2,// optional
                    // locale: "zh_CN",// optional
                    hintDay: 'Day', // optional
                    // hintMonth: 'Month', // optional
                    // hintYear: 'Year', // optional

                    hintTextStyle: TextStyle(color: font_color, fontSize: 12.sp), // optional
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Gender",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Radio(
                            activeColor: font_green,
                            value: 1,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value!;
                              });
                            },
                          ),
                          Text(
                            "Male",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: font_color,
                              fontFamily: 'OpenSans',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            activeColor: font_green,
                            value: 2,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value!;
                              });
                            },
                          ),
                          Text(
                            "Female",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: font_color,
                              fontFamily: 'OpenSans',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            activeColor: font_green,
                            value: 3,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value!;
                              });
                            },
                          ),
                          Text(
                            "Others",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: font_color,
                              fontFamily: 'OpenSans',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "Mobile Number",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 12.sp,
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
                        hintStyle: TextStyle(color: font_color),
                        hintText: "0711234578",
                        fillColor: white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Email",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 12.sp,
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
                        hintStyle: TextStyle(color: font_color),
                        hintText: "novatechzone@gmail.com",
                        fillColor: white,
                      ),
                    ),
                  ),
                ]),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(blurRadius: 20, color: Colors.black12)], color: white, borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: MainButton(
                text: "Continue",
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   PageTransition(
                  //       type: PageTransitionType.fade,
                  //       duration: Duration(milliseconds: 800),
                  //       curve: Curves.easeIn,
                  //       child: EnableGps(),
                  //       inheritTheme: true,
                  //       ctx: context),
                  // );
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
