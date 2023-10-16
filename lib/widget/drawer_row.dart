import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../color/colors.dart';

class DrawerRow extends StatelessWidget {
  const DrawerRow({super.key, required this.text, required this.on, required this.icon});
  final String text;
  final VoidCallback on;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: on,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        child: SizedBox(
          width: w / 1.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(
                      icon,
                      color: white,
                      size: 15.sp,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      text,
                      style: TextStyle(fontSize: 12.sp, fontFamily: 'Comfortaa-VariableFont_wght', color: white, fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_sharp,
                color: white.withOpacity(0.8),
                size: 13.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
