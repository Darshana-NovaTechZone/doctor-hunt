import 'package:dentit_hunt/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sizer/sizer.dart';

import '../../../../widget/arrow_button.dart';

import '../../widget/login/button.dart';
import '../../widget/mainButton.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/back.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Color.fromARGB(255, 200, 201, 201).withOpacity(0.1), BlendMode.darken))),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: h,
              child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Spacer(
                  flex: 5,
                ),
                Text(
                  "Join us to start searching",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'OpenSans',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "You can search course, apply course and fine scholarship for abroad studies",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'OpenSans',
                    fontSize: 11.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(onTap: () {}, text: "Google", img: 'assets/icons8-google-48 (2).png'),
                    Button(
                      onTap: () {},
                      text: "Facebook",
                      img: 'assets/icons8-fb-48.png',
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: h / 13,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Color.fromARGB(255, 144, 140, 140), fontWeight: FontWeight.w400),
                      hintText: "Name",
                      fillColor: white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: h / 13,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Color.fromARGB(255, 144, 140, 140), fontWeight: FontWeight.w400),
                      hintText: "Email",
                      fillColor: white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: h / 13,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Color.fromARGB(255, 144, 140, 140), fontWeight: FontWeight.w400),
                      hintText: "password",
                      fillColor: white,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.circle),
                    Text(
                      "I agree with the Term of Service & Privacy Policy",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black38,
                        fontFamily: 'OpenSans',
                        fontSize: 9.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: MainButton(
                    onTap: () {},
                    text: "Sign up",
                  ),
                ),
                Spacer(
                  flex: 5,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Have an account? login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: font_green,
                      fontFamily: 'OpenSans',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
