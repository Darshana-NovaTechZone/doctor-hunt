import 'package:dentit_hunt/UI/login_and_register/register.dart';
import 'package:dentit_hunt/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:sizer/sizer.dart';

import '../../../../widget/arrow_button.dart';
import '../../widget/login/button.dart';
import '../../widget/mainButton.dart';
import '../navigation/naviagation.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  int x = 0;
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
                  "Welcome back",
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
                      suffixIcon: Icon(Icons.check),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Color.fromARGB(255, 144, 140, 140), fontWeight: FontWeight.w400),
                      hintText: "info@novatechzone.com",
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
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: MainButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Navigation(),
                          ));
                    },
                    text: "Login",
                  ),
                ),
                TextButton(
                  onPressed: () {
                    forgetPassword();
                  },
                  child: Text(
                    "Forgot password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: font_green,
                      fontFamily: 'OpenSans',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Spacer(
                  flex: 5,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Register(),
                        ));
                  },
                  child: Text(
                    "Don't have an account? Join us",
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

  forgetPassword() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          var h = MediaQuery.of(context).size.height;
          var w = MediaQuery.of(context).size.width;
          return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState /*You can rename this!*/) {
              return Padding(
                padding: EdgeInsets.all(12),
                child: Padding(
                  padding: MediaQuery.of(context).viewInsets,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Container(
                            color: Colors.black26,
                            height: 5,
                            width: w / 3,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          x == 0
                              ? "Forgot password"
                              : x == 1
                                  ? "Enter 4 Digits Code"
                                  : "Reset Password",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'OpenSans',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          x == 0
                              ? "Enter your email for the verification process we will send 4 digit code to your email."
                              : x == 1
                                  ? "Enter  digit code that you received on tour email."
                                  : "Set the new password for your account so you can login and access all the features.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'OpenSans',
                            fontSize: 11.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        x == 0
                            ? SizedBox(
                                height: h / 13,
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                                    enabledBorder:
                                        OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                                    focusedBorder:
                                        OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    filled: true,
                                    hintStyle: TextStyle(color: Color.fromARGB(255, 144, 140, 140), fontWeight: FontWeight.w400),
                                    hintText: "Email",
                                    fillColor: white,
                                  ),
                                ),
                              )
                            : x == 1
                                ? OtpTextField(
                                    numberOfFields: 5,
                                    borderColor: Color(0xFF512DA8),
                                    //set to true to show as box or false to show as dash
                                    showFieldAsBox: true,
                                    //runs when a code is typed in
                                    onCodeChanged: (String code) {
                                      //handle validation or checks here
                                    },
                                    //runs when every textfield is filled
                                    onSubmit: (String verificationCode) {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text("Verification Code"),
                                              content: Text('Code entered is $verificationCode'),
                                            );
                                          });
                                    }, // end onSubmit
                                  )
                                : Column(children: [
                                    SizedBox(
                                      height: h / 13,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                                          suffixIcon: Icon(Icons.remove_red_eye),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          filled: true,
                                          hintStyle: TextStyle(color: Color.fromARGB(255, 144, 140, 140), fontWeight: FontWeight.w400),
                                          hintText: "New Password",
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
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          filled: true,
                                          hintStyle: TextStyle(color: Color.fromARGB(255, 144, 140, 140), fontWeight: FontWeight.w400),
                                          hintText: "Re-enter Password",
                                          fillColor: white,
                                        ),
                                      ),
                                    ),
                                  ]),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: MainButton(
                            text: "Continue",
                            onTap: () {
                              setState(() {
                                if (x == 0) {
                                  x = 1;
                                } else if (x == 1) {
                                  x = 2;
                                } else if (x == 2) {
                                  x = 0;
                                  Navigator.pop(context);
                                }
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        });
  }
}
