import 'package:dentit_hunt/widget/mainButton.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

import '../../../../color/colors.dart';
import '../../../../widget/arrow_button.dart';
import '../../../../widget/edit_button.dart';
import '../../booking/select_time.dart';
import 'diagontic_test_details.dart';

class DiagonsticsTests extends StatefulWidget {
  const DiagonsticsTests({super.key});

  @override
  State<DiagonsticsTests> createState() => _DiagonsticsTestsState();
}

class _DiagonsticsTestsState extends State<DiagonsticsTests> {
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
          'DiagonsticsTests',
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
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, children: [
              SizedBox(
                height: 100,
              ),
              Container(
                margin: EdgeInsets.all(30),
                width: h / 4,
                height: h / 4,
                child: Image.asset('assets/icons8-diagnostic-tool-100.png'),
                decoration: BoxDecoration(
                  color: font_green.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "You haven't booked any tested yet",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Get started with you first health checkup",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 13.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MainButton(
                  text: "Book Now",
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 800),
                          curve: Curves.easeIn,
                          child: DiagnosticsTestsDetails(),
                          inheritTheme: true,
                          ctx: context),
                    );
                  },
                ),
              ),
              Spacer(
                flex: 5,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
