import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../color/colors.dart';

class Onboard2 extends StatelessWidget {
  const Onboard2({super.key});

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
          right: -3,
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
                  image: DecorationImage(image: AssetImage('assets/how-to-start-a-medical-practice-story2-770x462.jpg'), fit: BoxFit.cover),
                ),
              ),
              Text(
                "Choose Best Doctors",
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
                  "Only expert work with us\n",
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
    path_1.moveTo(size.width * 1.0015857, size.height * -0.0003714);
    path_1.lineTo(size.width * 0.5911000, size.height * -0.0051571);
    path_1.quadraticBezierTo(size.width * 0.1345429, size.height * 0.1253857, size.width * 0.0911714, size.height * 0.5470143);
    path_1.quadraticBezierTo(size.width * 0.0838000, size.height * 1.0995429, size.width * 1.0026714, size.height * 0.9299714);
    path_1.lineTo(size.width * 1.0015857, size.height * -0.0003714);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);

    // Layer 1

    Paint paint_stroke_1 = Paint()
      ..color = const Color.fromARGB(255, 14, 190, 127)
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
