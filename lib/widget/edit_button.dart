import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../color/colors.dart';

class EditButton extends StatefulWidget {
  const EditButton({super.key, required this.text, required this.onTap, required this.w, required this.h, required this.fontSize});
  final String text;
  final VoidCallback onTap;
  final double w;
  final double h;
  final double fontSize;

  @override
  State<EditButton> createState() => _EditButtonState();
}

class _EditButtonState extends State<EditButton> {
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
          height: widget.h,
          width: widget.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [font_green, font_green], begin: Alignment.centerLeft, end: Alignment.bottomCenter),
          ),
          child: Text(
            widget.text,
            style: TextStyle(
              color: white,
              fontFamily: 'OpenSans',
              fontSize: widget.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
