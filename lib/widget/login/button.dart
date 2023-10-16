import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../color/colors.dart';

class Button extends StatefulWidget {
  const Button({super.key, required this.text, required this.onTap, required this.img});
  final String text;
  final VoidCallback onTap;
  final String img;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
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
          width: w / 2.2,
          height: h / 13,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                widget.img,
                height: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                widget.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'OpenSans',
                  fontSize: 13.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
