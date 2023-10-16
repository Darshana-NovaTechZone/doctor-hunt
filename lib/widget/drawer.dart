import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../color/colors.dart';
import 'arrow_button.dart';
import 'drawer_row.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key, required this.loging});
  final bool loging;

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool isLoading = false;
  bool tap = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
          backgroundColor: black,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
       
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(10), child: Image.asset('assets/menu_icon.png')),
                      SizedBox(
                        height: 20,
                      ),
                      Text( 'OTHER', style: TextStyle(fontFamily: 'Comfortaa-VariableFont_wght', color: white, fontWeight: FontWeight.normal), ),
                      SizedBox(
                        height: 15,
                      ),
                      DrawerRow(
                          icon: Icons.book,
                          text: 'My CV',
                          on: () {
                           
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      DrawerRow(
                          icon: Icons.support_agent_rounded,
                          text: 'Get Support',
                          on: () {
                          
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 15,
                      ),
  Text( 'OTHER', style: TextStyle(fontFamily: 'Comfortaa-VariableFont_wght', color: white, fontWeight: FontWeight.normal), ),
                      SizedBox(
                        height: 15,
                      ),
                      DrawerRow(
                          icon: Icons.share,
                          text: 'Share this app',
                          on: () {
                       }),
                      SizedBox(
                        height: 10,
                      ),
                      DrawerRow(
                          icon: Icons.more,
                          text: 'More by our team',
                          on: () {
                         
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      DrawerRow(
                          icon: Icons.reviews,
                          text: 'Leave us a Review',
                          on: () {
                   
                          }),
                      SizedBox(
                        height: 15,
                      ),
                    Text( 'OTHER', style: TextStyle(fontFamily: 'Comfortaa-VariableFont_wght', color: white, fontWeight: FontWeight.normal), ),
                      SizedBox(
                        height: 15,
                      ),
                      DrawerRow(
                          icon: Icons.messenger,
                          text: 'Join Community',
                          on: () async {
                        
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      DrawerRow(
                          icon: Icons.privacy_tip,
                          text: 'Privacy Policy',
                          on: () async {
                         
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      DrawerRow(
                          icon: Icons.contact_phone_rounded,
                          text: 'Contact us',
                          on: () {
                          
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      DrawerRow(
                          icon: Icons.accessibility_new_sharp,
                          text: 'About Us',
                          on: () {
                         
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    style: ButtonStyle(
                      animationDuration: Duration(milliseconds: 2000),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                      ),
                    ),
                    onPressed: () {
                  
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      alignment: Alignment.center,
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: tap ? black : Colors.transparent, width: 0),
                          color: widget.loging ? red : Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(widget.loging ? 'Logout' : "Login",
                          style: TextStyle(fontSize: 12, fontFamily: 'Comfortaa-VariableFont_wght', color: white, fontWeight: FontWeight.normal)),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
