import 'package:dentit_hunt/widget/mainButton.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

import '../../../../color/colors.dart';
import '../../../../widget/arrow_button.dart';
import '../../../../widget/edit_button.dart';
import '../../booking/select_time.dart';

class AddMedicalReport extends StatefulWidget {
  const AddMedicalReport({super.key});

  @override
  State<AddMedicalReport> createState() => _AddMedicalReportState();
}

class _AddMedicalReportState extends State<AddMedicalReport> {
  ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        title: Text('Medical Records'),
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
                child: Image.asset('assets/report.png'),
                decoration: BoxDecoration(
                  color: font_green.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Add a medical record.",
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
                "A details health history helps a doctor diagnose you better",
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
                  text: "Add a record",
                  onTap: () {},
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
