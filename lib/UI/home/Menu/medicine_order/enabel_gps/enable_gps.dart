import 'package:app_settings/app_settings.dart';
import 'package:dentit_hunt/widget/mainButton.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

import '../../../../../color/colors.dart';
import '../../../../../widget/arrow_button.dart';
import '../medicine_order_details.dart';

class EnableGps extends StatefulWidget {
  const EnableGps({super.key});

  @override
  State<EnableGps> createState() => _EnableGpsState();
}

class _EnableGpsState extends State<EnableGps> {
  ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        title: Text(
          'Enable Location Services',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: ArrowButton(
          onTap: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/back.jpg'), fit: BoxFit.cover)),
        child: SizedBox(
          height: h,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, children: [
              SizedBox(
                height: 100,
              ),
              Container(
                margin: EdgeInsets.all(30),
                width: h / 4,
                height: h / 4,
                child: Image.asset('assets/icons8-location-100.png'),
                decoration: BoxDecoration(
                  color: font_green.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Location",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Your location services are switched off.Please enable location.to help us serve better",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 13.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MainButton(
                  text: "Enable Location",
                  onTap: () async {
                    AppSettings.openAppSettings();
//                   var  _serviceEnabled = await location.serviceEnabled();
// if (!_serviceEnabled) {
//   _serviceEnabled = await location.requestService();
//   if (!_serviceEnabled) {
//     debugPrint('Location Denied once');
//   }
// }
                    Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 800),
                          curve: Curves.easeIn,
                          child: MedicineOrderDetails(),
                          inheritTheme: true,
                          ctx: context),
                    );
                  },
                ),
              ),
              Spacer(
                flex: 5,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
