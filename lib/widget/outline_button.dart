import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../color/colors.dart';

class OutLineButton extends StatefulWidget {
  const OutLineButton({super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;

  @override
  State<OutLineButton> createState() => _OutLineButtonState();
}

class _OutLineButtonState extends State<OutLineButton> {
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
            border: Border.all(color: font_green),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            widget.text,
            style: TextStyle(
              color: font_green,
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
