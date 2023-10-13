import 'package:dentit_hunt/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../widget/arrow_button.dart';

class Comment extends StatefulWidget {
  const Comment({super.key});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: AppBar(
          leading: ArrowButton(
            onTap: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            // invertColors: true,
            colorFilter: ColorFilter.mode(black.withOpacity(0.5), BlendMode.darken),
            image: AssetImage('assets/istockphoto-171347389-612x612.jpg'),
            fit: BoxFit.cover,
          )),
          child: Stack(children: [
            Positioned(
              bottom: 70,
              right: 0,
              left: 0,
              height: h / 2,
              child: SingleChildScrollView(
                controller: _controller,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(8),
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.all(12),
                              width: h / 14,
                              height: h / 14,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(image: AssetImage('assets/o1.jpg'), fit: BoxFit.cover),
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "shaal notemen",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: white,
                                      fontFamily: 'OpenSans',
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "shaal ddddf sffff sfffffsf aafff sffffffffffff fff ffffffffffffffff",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: white.withOpacity(0.6),
                                      fontFamily: 'OpenSans',
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
        bottomNavigationBar: Container(
            padding: MediaQuery.of(context).viewInsets,
            color: Colors.transparent,
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(100.0),
                        onTap: () {},
                        child: Container(
                            child: Icon(
                              Icons.chat_outlined,
                              color: white,
                            ),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: font_green,
                            )),
                      ),
                    ),
                    suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.tag_faces_outlined)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Type in your text",
                    fillColor: white,
                  ),
                ))));
  }
}
