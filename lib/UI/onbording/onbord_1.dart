import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../color/colors.dart';

class Onboard1 extends StatelessWidget {
  const Onboard1({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: h,
          width: w,
        ),
        Positioned(
          left: -10,
          child: CustomPaint(
            size: Size(w / 1.7,
                (h / 2.5).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(),
          ),
        ),
        Positioned(
          top: h / 30,
          right: 0,
          left: 0,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(30),
                width: h / 2.5,
                height: h / 2.5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('assets/o1.jpg'), fit: BoxFit.cover),
                ),
              ),
              Text(
                "Find Trusted Doctors",
                style: TextStyle(
                  color: black,
                  fontFamily: 'OpenSans',
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "You can easily find the best doctors from \nour app",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: black,
                    fontFamily: 'OpenSans',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 214, 255, 248), blurRadius: 100, offset: Offset(0, 0), spreadRadius: 70, // Shadow position
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 2.5 + h / 30,
          right: 0,
          child: Column(
            children: [],
          ),
        )
      ]),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8357143, size.height * 0.5600000);
    path_0.lineTo(size.width * 0.8357143, size.height * 0.5600000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);

    // Layer 1

    Paint paint_fill_1 = Paint()
      ..color = const Color.fromARGB(255, 14, 190, 127)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.0019000, size.height * -0.0019143);
    path_1.lineTo(size.width * 0.5162857, size.height * -0.0005714);
    path_1.quadraticBezierTo(size.width * 0.9014429, size.height * 0.1999429, size.width * 0.9036857, size.height * 0.6067143);
    path_1.quadraticBezierTo(size.width * 0.8963143, size.height * 1.1592429, size.width * 0.0000143, size.height * 0.9100714);
    path_1.lineTo(size.width * 0.0019000, size.height * -0.0019143);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);

    // Layer 1

    Paint paint_stroke_1 = Paint()
      ..color = const Color.fromARGB(0, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paint_stroke_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
