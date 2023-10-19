import 'package:dentit_hunt/widget/mainButton.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
import '../../../../color/colors.dart';
import '../../../../widget/arrow_button.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
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
          'Privacy policy',
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
            child: SingleChildScrollView(
              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Doctor Hunt Apps Privacy Policy",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: font_color,
                    fontFamily: 'OpenSans',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "There are any variations of passages of Lorem Ipsum available, but the majority have suffered alterarion in some form, by injected humour,or randomised words believable, it is a long  established fact that reader will distracted by the readable content of a page when looking at its layout,The point of using Lorem Ipsu is that it has a prelt is along established fact that reader will loking at its layout.The point of using Lorem ipsum is that ist has a more",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: font_color,
                    fontFamily: 'OpenSans',
                    fontSize: 13.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                      child: Icon(
                        Icons.circle,
                        color: font_green,
                        size: 14,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        "The standards chunk of lorem Ipsum used since 1500s is reproduced below for those interested",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: font_color,
                          fontFamily: 'OpenSans',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                      child: Icon(
                        Icons.circle,
                        color: font_green,
                        size: 14,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        "Sections 1.10.32 and1.10.33 from 'de Finibus Bonorum et Malorum.The point of using.'",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: font_color,
                          fontFamily: 'OpenSans',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                      child: Icon(
                        Icons.circle,
                        color: font_green,
                        size: 14,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        "Lorem Ipsum is that it has a morelt is along established fact that reader will distracted.'",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: font_color,
                          fontFamily: 'OpenSans',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                      child: Icon(
                        Icons.circle,
                        color: font_green,
                        size: 14,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        "The point of using Lore Ipsum is that it has a morelt is along established fact that reader will distracted",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: font_color,
                          fontFamily: 'OpenSans',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "it is along established fact that reader distracted by the readable content of a pagee when looking at its layout. The point o using Lorem Ipsum is that it has amorelt is a long established",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: font_color,
                    fontFamily: 'OpenSans',
                    fontSize: 13.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
