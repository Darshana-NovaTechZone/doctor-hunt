import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../color/colors.dart';

class DiagnosticsRow extends StatelessWidget {
  const DiagnosticsRow({super.key, required this.icon, required this.test, required this.color});
  final IconData icon;
  final String test;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SizedBox(
      width: w / 2.2,
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: w / 7.5,
            width: w / 7.5,
            child: SizedBox(
                height: h / 10,
                width: w / 10,
                child: Icon(
                  icon,
                  color: white,
                  size: 20.sp,
                )),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Virtual_Background-Neutral.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(color.withOpacity(0.9), BlendMode.darken)),
                color: red,
                borderRadius: BorderRadius.circular(15)),
          ),
          SizedBox(
            width: 8,
          ),
          Flexible(
            child: Text(
              test,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: black,
                fontFamily: 'OpenSans',
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
