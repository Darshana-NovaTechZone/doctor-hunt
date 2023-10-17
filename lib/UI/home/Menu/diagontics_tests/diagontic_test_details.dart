import 'package:dentit_hunt/widget/mainButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sizer/sizer.dart';

import '../../../../color/colors.dart';
import '../../../../widget/arrow_button.dart';
import '../../../../widget/digonstics_row.dart';
import '../../../../widget/edit_button.dart';

class DiagnosticsTestsDetails extends StatefulWidget {
  const DiagnosticsTestsDetails({super.key});

  @override
  State<DiagnosticsTestsDetails> createState() => _DiagnosticsTestsDetailsState();
}

class _DiagnosticsTestsDetailsState extends State<DiagnosticsTestsDetails> {
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
          'DiagonsticsTestsDetails',
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
          child: SingleChildScrollView(
            controller: _controller,
            child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 100,
              ),
              AnimationLimiter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: AnimationConfiguration.synchronized(
                    child: SlideAnimation(
                      duration: Duration(milliseconds: 1000),
                      verticalOffset: 50.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Get Full body health checkups from the comfort of your home",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "up to 45% off + get 10% health cash back",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: font_green,
                              fontFamily: 'OpenSans',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SlideAnimation(
                            duration: Duration(milliseconds: 1000),
                            horizontalOffset: 200.0,
                            child: Row(
                              children: [
                                DiagnosticsRow(
                                  color: Colors.blue,
                                  icon: Icons.home,
                                  test: "Free home Sample pickup",
                                ),
                                DiagnosticsRow(
                                  color: Colors.red,
                                  icon: Icons.medical_information_rounded,
                                  test: "Practo asociate labs",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              DiagnosticsRow(
                                color: Color.fromARGB(255, 255, 147, 45),
                                icon: Icons.home,
                                test: "Free home Sample pickup",
                              ),
                              DiagnosticsRow(
                                color: Color.fromARGB(255, 96, 196, 99),
                                icon: Icons.medical_information_rounded,
                                test: "Practo asociate labs",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Recommend for you",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: black,
                              fontFamily: 'OpenSans',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              AnimationLimiter(
                child: AnimationConfiguration.synchronized(
                  child: SlideAnimation(
                    verticalOffset: 50.0,
                    child: ListView.builder(
                      padding: EdgeInsets.all(0),
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [BoxShadow(blurRadius: 50, color: Colors.black12, spreadRadius: 1, blurStyle: BlurStyle.solid)],
                                color: white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "Advanced Young Indian Health Checkup",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: black,
                                        fontFamily: 'OpenSans',
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Ideal for individuals aged 21-40 years",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: font_color,
                                        fontFamily: 'OpenSans',
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7), border: Border.all(color: font_green)),
                                      child: Text(
                                        "69 test included",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: font_green,
                                          fontFamily: 'OpenSans',
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: w, height: h / 3, child: Image.asset('assets/di.jpeg', fit: BoxFit.cover)),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "\$ 358",
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: black,
                                                fontFamily: 'OpenSans',
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "\$ 338",
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: font_color,
                                                fontFamily: 'OpenSans',
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "35% off",
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: font_green,
                                                fontFamily: 'OpenSans',
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "+ 10% Health cash back T&C",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            color: font_color,
                                            fontFamily: 'OpenSans',
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Flexible(
                                      child: EditButton(
                                        fontSize: 10.sp,
                                        h: h / 17,
                                        onTap: () {
                                          // Navigator.push(
                                          //   context,
                                          //   PageTransition(
                                          //       type: PageTransitionType.rightToLeft,
                                          //       duration: Duration(milliseconds: 500),
                                          //       curve: Curves.easeIn,
                                          //       child: SelectTime(),
                                          //       inheritTheme: true,
                                          //       ctx: context),
                                          // );
                                        },
                                        text: "Book Now",
                                        w: w / 3.5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                            ]),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
