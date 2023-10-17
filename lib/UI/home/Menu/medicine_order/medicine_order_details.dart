import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

import '../../../../color/colors.dart';
import '../../../../widget/arrow_button.dart';
import '../../../../widget/edit_button.dart';
import '../../booking/select_time.dart';

class MedicineOrderDetails extends StatefulWidget {
  const MedicineOrderDetails({super.key});

  @override
  State<MedicineOrderDetails> createState() => _MedicineOrderDetailsState();
}

class _MedicineOrderDetailsState extends State<MedicineOrderDetails> {
  ScrollController _controller = ScrollController();
  List orders = [
    {"icon": Icons.medical_information, "text": "Guide to medicine order"},
    {"icon": Icons.receipt_long, "text": "Prescription related issues"},
    {"icon": Icons.shopping_cart_checkout, "text": "Order status"},
    {"icon": Icons.delivery_dining, "text": "Order delivery"},
    {"icon": Icons.featured_play_list_rounded, "text": "Payment & Refunds"},
    {"icon": Icons.turn_left, "text": "Order returns"},
  ];
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        title: Text(
          'Medicine order',
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
        child: SingleChildScrollView(
          controller: _controller,
          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w / 15),
              child: SizedBox(
                height: h / 13,
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.close,
                      color: font_color,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: font_color,
                    ),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.black12)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(
                      color: font_color,
                    ),
                    hintText: "Search",
                    fillColor: white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: w,
              // height: 300,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                padding: EdgeInsets.all(12),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: orders.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(12.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: white, borderRadius: BorderRadius.circular(15), border: Border.all(color: Color.fromARGB(31, 173, 170, 170))),
                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, children: [
                          Container(
                            width: w / 5.5,
                            height: w / 5.5,
                            child: Icon(
                              orders[index]['icon'],
                              size: 25.sp,
                              color: font_green,
                            ),
                            decoration: BoxDecoration(
                              color: font_green.withOpacity(0.2),
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black12),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            orders[index]['text'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: font_color,
                              fontFamily: 'OpenSans',
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ]),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ]),
        ),
      ),
    );
  }
}
