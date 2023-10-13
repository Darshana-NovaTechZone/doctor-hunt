import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../color/colors.dart';

class ArrowButton extends StatefulWidget {
  const ArrowButton({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  State<ArrowButton> createState() => _ArrowButtonState();
}

class _ArrowButtonState extends State<ArrowButton> {
  bool tap = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: widget.onTap,
        onTapCancel: () {
          setState(() {
            tap = false;
          });
        },
        onTapDown: (_) {
          setState(() {
            tap = true;
          });
        },
        onTapUp: (_) {
          setState(() {
            tap = false;
          });
        },
        child: AnimatedOpacity(
          duration: Duration(milliseconds: 50),
          opacity: tap ? 0.2 : 1,
          child: Center(
            child: Container(
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 18,
              ),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 228, 222, 222).withOpacity(0.7),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(2, 2), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
