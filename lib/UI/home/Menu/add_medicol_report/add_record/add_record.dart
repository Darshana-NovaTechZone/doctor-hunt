import 'dart:io';

import 'package:dentit_hunt/widget/mainButton.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import '../../../../../color/colors.dart';
import '../../../../../widget/arrow_button.dart';

class AddMedicalReports extends StatefulWidget {
  const AddMedicalReports({super.key});

  @override
  State<AddMedicalReports> createState() => _AddMedicalReportsState();
}

class _AddMedicalReportsState extends State<AddMedicalReports> {
  ScrollController _controller = ScrollController();

  String _imagepath = '';
  final ImagePicker imgpicker = ImagePicker();
  FilePickerResult? result;
  Future getImage() async {
    try {
      var pickedFile = await imgpicker.pickImage(source: ImageSource.camera);
      if (pickedFile != null) {
        setState(() {
          _imagepath = pickedFile.path;
        });
      } else {
        print("No image is selected.");
      }
    } catch (e) {
      print("error while picking image.");
    }
  }

  Future getImageFromGallery() async {
    try {
      var pickedFile = await imgpicker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _imagepath = pickedFile.path;
        });
      } else {
        print("No image is selected.");
      }
    } catch (e) {
      print("error while picking image.");
    }
  }

  getFile() async {
    result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc'],
    );
    if (result == null) {
      print("No file selected");
    } else {
      setState(() {});
      result?.files.forEach((element) {
        print(element.name);
        print(element.extension);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        title: Text(
          'Add Recordes',
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
          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 100,
            ),
            SizedBox(
              height: h / 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        getImages();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.add,
                              size: 25.sp,
                              color: font_green,
                            ),
                            Text(
                              "Add more images",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: font_green,
                                fontFamily: 'OpenSans',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        height: h / 6,
                        width: h / 7,
                        decoration: BoxDecoration(color: font_green.withOpacity(0.2), borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      height: h / 6,
                      width: h / 7,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/download.jpeg'), fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    _imagepath.isEmpty
                        ? SizedBox()
                        : Container(
                            height: h / 6,
                            width: h / 7,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: FileImage(File(_imagepath)), fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: w,
              height: h / 1.8,
              decoration: BoxDecoration(
                  color: white,
                  boxShadow: [BoxShadow(blurRadius: 10, color: Color.fromARGB(66, 145, 143, 143), spreadRadius: 0.5, offset: Offset(0, -5))],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Record for",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: black,
                      fontFamily: 'OpenSans',
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.edit),
                          )),
                      style: TextStyle(color: font_green, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Type of record",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: black,
                      fontFamily: 'OpenSans',
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: w,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.report,
                              color: font_color,
                            ),
                            Text(
                              "Report",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: font_color,
                                fontFamily: 'OpenSans',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Icon(
                              Icons.receipt_long,
                              color: font_color,
                            ),
                            Text(
                              "Prescription",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: font_color,
                                fontFamily: 'OpenSans',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Icon(
                              Icons.receipt,
                              color: font_color,
                            ),
                            Text(
                              "Invoice",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: font_color,
                                fontFamily: 'OpenSans',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        Spacer(
                          flex: 3,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      color: Colors.black12,
                    ),
                  ),
                  Text(
                    "Record created on",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: black,
                      fontFamily: 'OpenSans',
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.edit),
                          )),
                      style: TextStyle(color: font_green, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: MainButton(
            text: "Upload record",
            onTap: () {},
          ),
        ),
      ),
    );
  }

  getImages() {
    showModalBottomSheet(
        context: context,
        // color is applied to main screen when modal bottom screen is displayed

        //background color for modal bottom screen
        backgroundColor: white,
        //elevates modal bottom screen

        // gives rounded corner to modal bottom screen
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        builder: (BuildContext context) {
          var h = MediaQuery.of(context).size.height;
          var w = MediaQuery.of(context).size.width;
          // UDE : SizedBox instead of Container for whitespaces
          return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState /*You can rename this!*/) {
              return Container(
                width: w,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 5,
                        width: w / 3,
                        color: Colors.black12,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        "Add a record",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: black,
                          fontFamily: 'OpenSans',
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () async {
                        getImage();
                      },
                      child: SizedBox(
                        height: h / 15,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 12,
                            ),
                            Icon(
                              Icons.camera_alt,
                              color: font_color,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Take a photo",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: font_color,
                                fontFamily: 'OpenSans',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        getImageFromGallery();
                      },
                      child: SizedBox(
                        height: h / 15,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 12,
                            ),
                            Icon(
                              Icons.photo,
                              color: font_color,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Upload from gallery",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: font_color,
                                fontFamily: 'OpenSans',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        getFile();
                      },
                      child: SizedBox(
                        height: h / 15,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 12,
                            ),
                            Icon(
                              Icons.file_copy,
                              color: font_color,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Upload files",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: font_color,
                                fontFamily: 'OpenSans',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              );
            },
          );
        });
  }

  pickIages() async {}
}
