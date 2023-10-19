import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

import '../../../color/colors.dart';
import '../../../widget/arrow_button.dart';
import '../../../widget/mainButton.dart';
import '../../../widget/outline_button.dart';
import 'comment/comment.dart';
import 'doctor_details/doctor_details.dart';

class SelectTime extends StatefulWidget {
  const SelectTime({super.key});

  @override
  State<SelectTime> createState() => _SelectTimeState();
}

class _SelectTimeState extends State<SelectTime> {
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
        title: Text(
          'Select Time',
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
          controller: _controller,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                          child: Comment(),
                          inheritTheme: true,
                          ctx: context),
                    );
                  },
                  child: Container(
                    width: w,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(15), boxShadow: [
                      BoxShadow(color: Color.fromARGB(255, 64, 64, 64).withOpacity(.05), offset: Offset(0, 0), blurRadius: 20, spreadRadius: 5)
                    ]),
                    child: Stack(
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
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                        ]),
                        Positioned(right: 0, child: IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h / 8.5,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: slot.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                            s = slot[index]['s'];
                            day = slot[index]['date'];
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                          alignment: Alignment.center,
                          child: Column(mainAxisSize: MainAxisSize.min, children: [
                            Text(
                              slot[index]['date'].toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: selectedIndex == index ? white : Colors.black,
                                fontFamily: 'OpenSans',
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              slot[index]['s'].toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: selectedIndex == index ? white : Colors.black54,
                                fontFamily: 'OpenSans',
                                fontSize: 9.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            )
                          ]),
                          decoration: BoxDecoration(
                              color: selectedIndex == index ? font_green : Colors.white70,
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  day,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'OpenSans',
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              s == 'No slots available'
                  ? Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            s,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black45,
                              fontFamily: 'OpenSans',
                              fontSize: 13.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MainButton(
                            onTap: () {},
                            text: "Next availability on wed,2 Feb",
                          ),
                        ),
                        Text(
                          "OR",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black38,
                            fontFamily: 'OpenSans',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OutLineButton(
                            onTap: () {},
                            text: "Contact Clinic",
                          ),
                        )
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Afternoon 7 slots",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'OpenSans',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        GridView.count(
                            crossAxisCount: 4,
                            childAspectRatio: 1.8,
                            padding: const EdgeInsets.all(8.0),
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 4.0,
                            shrinkWrap: true,
                            children: new List<Widget>.generate(time.length, (index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedAfternoon = index;
                                  });
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.easeIn,
                                        child: DoctorDetails(),
                                        inheritTheme: true,
                                        ctx: context),
                                  );
                                },
                                child: new Container(
                                    decoration: BoxDecoration(
                                        color: font_green.withOpacity(selectedAfternoon == index ? 1 : 0.2), borderRadius: BorderRadius.circular(10)),
                                    height: 30,
                                    child: new Center(
                                      child: new Text(
                                        time[index],
                                        style: TextStyle(color: selectedAfternoon == index ? white : font_green, fontWeight: FontWeight.bold),
                                      ),
                                    )),
                              );
                            })),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Evening 5 slots",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'OpenSans',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        GridView.count(
                            crossAxisCount: 4,
                            childAspectRatio: 1.8,
                            padding: const EdgeInsets.all(8.0),
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 4.0,
                            shrinkWrap: true,
                            children: new List<Widget>.generate(time2.length, (index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedEvening = index;
                                  });
                                },
                                child: new Container(
                                    decoration: BoxDecoration(
                                        color: font_green.withOpacity(selectedEvening == index ? 1 : 0.2), borderRadius: BorderRadius.circular(10)),
                                    height: 30,
                                    child: new Center(
                                      child: new Text(
                                        time[index],
                                        style: TextStyle(color: selectedEvening == index ? white : font_green, fontWeight: FontWeight.bold),
                                      ),
                                    )),
                              );
                            })),
                      ],
                    ),
            ]),
          ),
        ),
      ),
    );
  }
}
