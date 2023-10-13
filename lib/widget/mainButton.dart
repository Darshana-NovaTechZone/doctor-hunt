import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../color/colors.dart';

class MainButton extends StatefulWidget {
  const MainButton({super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  bool tap = false;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTapDown: (_) {
        setState(() {
          tap = true;
        });
      },
      onSecondaryTapDown: (_) {
        setState(() {
          tap = true;
        });
      },
      onSecondaryTapUp: (_) {
        setState(() {
          tap = false;
        });
      },
      onTapUp: (_) {
        setState(() {
          tap = false;
        });
      },
      onTapCancel: () {
        setState(() {
          tap = false;
        });
      },
      onTap: widget.onTap,
      mouseCursor: MouseCursor.defer,
      child: AnimatedOpacity(
        opacity: tap ? 0.2 : 1,
        duration: Duration(milliseconds: 30),
        child: Container(
          alignment: Alignment.center,
          height: h / 13,
          width: w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [font_green, font_green], begin: Alignment.centerLeft, end: Alignment.bottomCenter),
          ),
          child: Text(
            widget.text,
            style: TextStyle(
              color: white,
              fontFamily: 'OpenSans',
              fontSize: 13.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
