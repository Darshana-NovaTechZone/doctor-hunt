import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../color/colors.dart';
import '../../../../widget/arrow_button.dart';
import '../../../../widget/edit_button.dart';
import '../../../widget/mainButton.dart';

class Appointment2 extends StatefulWidget {
  const Appointment2({super.key});

  @override
  State<Appointment2> createState() => _Appointment2State();
}

class _Appointment2State extends State<Appointment2> {
  ScrollController _controller = ScrollController();
  int availableTime = 0;
  int remainderTime = 0;
  List<DateTime?> _singleDatePickerValueWithDefaultValue = [
    DateTime.now(),
  ];
  var config = CalendarDatePicker2Config(
    calendarViewMode: DatePickerMode.day,
    selectedDayHighlightColor: font_green,
    weekdayLabels: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
    weekdayLabelTextStyle: const TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.bold,
    ),
    firstDayOfWeek: 1,
    controlsHeight: 50,
    controlsTextStyle: const TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    dayTextStyle: TextStyle(
      color: black,
      fontWeight: FontWeight.bold,
    ),
    disabledDayTextStyle: const TextStyle(
      color: Colors.grey,
    ),
    selectableDayPredicate: (day) => !day.difference(DateTime.now().subtract(const Duration(days: 3))).isNegative,
  );
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
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/back.jpg'), fit: BoxFit.cover, colorFilter: ColorFilter.mode(black.withOpacity(0.1), BlendMode.darken))),
        child: SingleChildScrollView(
          controller: _controller,
          child: SizedBox(
            height: h,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: h / 2.8,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(20)),
                  child: CalendarDatePicker2(
                    config: config,
                    value: _singleDatePickerValueWithDefaultValue,
                    onValueChanged: (dates) => setState(() => _singleDatePickerValueWithDefaultValue = dates),
                  ),
                ),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(color: white, borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        "Available Time",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h / 9,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  availableTime = index;
                                });
                              },
                              child: Container(
                                  padding: EdgeInsets.all(12),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(shape: BoxShape.circle, color: font_green.withOpacity(availableTime == index ? 1 : 0.2)),
                                  child: Text(
                                    "12.00\nAM",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: availableTime == index ? white : black,
                                      fontFamily: 'OpenSans',
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        "Reminder Me Before",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h / 9,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  remainderTime = index;
                                });
                              },
                              child: Container(
                                  padding: EdgeInsets.all(12),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(shape: BoxShape.circle, color: font_green.withOpacity(remainderTime == index ? 1 : 0.2)),
                                  child: Text(
                                    "12.00\nAM",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: remainderTime == index ? white : black,
                                      fontFamily: 'OpenSans',
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: MainButton(
                        onTap: () {
                          confirDialog();
                        },
                        text: "CONFIRM",
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  confirDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(15),
          content: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, children: [
            CircleAvatar(
              backgroundColor: font_green.withOpacity(0.3),
              radius: 70,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/icons8-like-96 (1).png',
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Thank You !",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: black,
                fontFamily: 'OpenSans',
                fontSize: 21.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Your Appointment Successful",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 14.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "You , at 02:00 PMbooked an appointment with Dr. Pediatrician Purpieson on February 21",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black38,
                fontFamily: 'OpenSans',
                fontSize: 10.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: MainButton(
                onTap: () {
                  Navigator.pop(context);
                },
                text: "Done",
              ),
            ),
            Text(
              "Edit your appointment",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black38,
                fontFamily: 'OpenSans',
                fontSize: 12.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
          ]),
        );
      },
    );
  }
}
