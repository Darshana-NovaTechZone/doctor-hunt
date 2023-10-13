import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../color/colors.dart';
import '../../../widget/arrow_button.dart';

class PopularDoctors extends StatefulWidget {
  const PopularDoctors({super.key});

  @override
  State<PopularDoctors> createState() => _PopularDoctorsState();
}

class _PopularDoctorsState extends State<PopularDoctors> {
  ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        title: Text('Popular Doctors'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
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
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular doctor",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PopularDoctors(),
                          ));
                    },
                    child: Text(
                      "See all",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h / 3,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h / 3,
                      width: w / 2.5,
                      decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(15), boxShadow: [
                        BoxShadow(color: Color.fromARGB(255, 64, 64, 64).withOpacity(.05), offset: Offset(0, 0), blurRadius: 20, spreadRadius: 5)
                      ]),
                      child: Column(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                          child: Container(
                            child: Image.asset(
                              'assets/d.jpg',
                              fit: BoxFit.cover,
                            ),
                            height: h / 5,
                            width: w / 2.5,
                            decoration: BoxDecoration(color: red, borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        Text(
                          "Dr. Fillerup Grab",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Dr. Fillerup Grab",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 9.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 16.sp,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 16.sp,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 16.sp,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 16.sp,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 16.sp,
                            ),
                          ],
                        )
                      ]),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Category",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
              padding: EdgeInsets.all(8),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: w,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(15), boxShadow: [
                      BoxShadow(color: Color.fromARGB(255, 64, 64, 64).withOpacity(.05), offset: Offset(0, 0), blurRadius: 20, spreadRadius: 5)
                    ]),
                    child: Stack(
                      children: [
                        Row(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              height: h / 8,
                              width: h / 8,
                              child: Image.asset(
                                'assets/d.jpg',
                                fit: BoxFit.cover,
                              ),
                              decoration: BoxDecoration(color: red, borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Dr.sahnel",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Specialist Cardiologist",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star_rounded,
                                        color: Colors.yellow,
                                        size: 15.sp,
                                      ),
                                      Icon(
                                        Icons.star_rounded,
                                        color: Colors.yellow,
                                        size: 15.sp,
                                      ),
                                      Icon(
                                        Icons.star_rounded,
                                        color: Colors.yellow,
                                        size: 15.sp,
                                      ),
                                      Icon(
                                        Icons.star_rounded,
                                        color: Colors.yellow,
                                        size: 15.sp,
                                      ),
                                      Icon(
                                        Icons.star_rounded,
                                        color: Colors.yellow,
                                        size: 15.sp,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "2.5",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'OpenSans',
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        " (245 views)",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'OpenSans',
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                        ]),
                        Positioned(right: 0, child: IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)))
                      ],
                    ),
                  ),
                );
              },
            ),
          ]),
        ),
      ),
    );
  }
}
