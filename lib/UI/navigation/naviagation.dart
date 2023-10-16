import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

import '../../color/colors.dart';
import '../home/favourite_doctors/favourite_doctors.dart';
import '../home/home.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selectedIndex = 0;
  void _onItemTapped(int index) {
    print(index);

    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> page = [Home(), FavoriteDoctors(), Icon(Icons.abc_sharp), Icon(Icons.abc_sharp)];

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      bottomNavigationBar: MoltenBottomNavigationBar(
        borderSize: 1,
        curve: Curves.bounceIn,
        barColor: white,
        domeCircleSize: 40,
        selectedIndex: selectedIndex,
        domeCircleColor: font_green,
        borderColor: Color.fromARGB(255, 232, 229, 229),
        onTabChange: _onItemTapped,
        tabs: [
          MoltenTab(
            icon: Icon(Icons.home),
          ),
          MoltenTab(
            icon: Icon(Icons.favorite),
          ),
          MoltenTab(
            icon: Icon(Icons.art_track),
          ),
          MoltenTab(
            icon: Icon(Icons.chat_rounded),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: h / 3,
            left: 0,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 214, 255, 248), blurRadius: 100, offset: Offset(0, 0), spreadRadius: 70, // Shadow position
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 1,
            right: 0,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 214, 255, 248), blurRadius: 100, offset: Offset(0, 0), spreadRadius: 70, // Shadow position
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: page[selectedIndex],
          ),
        ],
      ),
    );
  }
}
