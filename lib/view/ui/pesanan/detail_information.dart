import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:latihan/view/ui/pesanan/location.dart';

import '../../../app_color.dart';

class DetailInformation extends StatefulWidget {
  const DetailInformation({Key? key}) : super(key: key);

  @override
  State<DetailInformation> createState() => _DetailInformationState();
}

class _DetailInformationState extends State<DetailInformation> {
  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;
  final _noteController = TextEditingController();
  final _problemController = TextEditingController();

  bool isValid = false;
  DateTime? selectedDate;
  late String formattedDate;

  final ImagePicker imgpicker = ImagePicker();
  List<XFile>? imagefiles;

  openImages() async {
    try {
      var pickedfiles = await imgpicker.pickMultiImage();
      //you can use ImageCourse.camera for Camera capture
      if (pickedfiles != null) {
        imagefiles = pickedfiles;
        setState(() {});
      } else {
        print("No image is selected.");
      }
    } catch (e) {
      print("error while picking file.");
    }
  }

  @override
  void dispose() {
    _noteController.dispose();
    _problemController.dispose();
    super.dispose();
  }

  inputCheck() {
    if (_noteController.text.isNotEmpty && _problemController.text.isNotEmpty) {
      setState(() {
        isValid = true;
      });
    } else {
      setState(() {
        isValid = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: bdark),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 17),
            child: Container(
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fill Detail Information',
                    style: GoogleFonts.inter(
                        fontSize: 24,
                        color: bdark,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 9),
                  Text(
                    'Lengkapi detail informasi penggunaan layanan',
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 26),
                  Text(
                    'Karakteristik Permasalahan',
                    style: GoogleFonts.inter(fontSize: 24, color: bdark),
                  ),
                  Row(
                    children: [
                      Container(height: 30, width: 1, color: bUngu),
                      SizedBox(width: 10),
                      Text(
                        'Layar Hitam Putih',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            color: bUngu,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 149),
                      Theme(
                        data: Theme.of(context)
                            .copyWith(unselectedWidgetColor: bUngu),
                        child: Checkbox(
                          activeColor: bUngu,
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(height: 30, width: 1, color: bUngu),
                      SizedBox(width: 10),
                      Text(
                        'Volume Kecil',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            color: bUngu,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 181),
                      Theme(
                        data: Theme.of(context)
                            .copyWith(unselectedWidgetColor: bUngu),
                        child: Checkbox(
                          activeColor: bUngu,
                          value: isChecked2,
                          onChanged: (value) {
                            setState(() {
                              isChecked2 = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(height: 30, width: 1, color: bUngu),
                      SizedBox(width: 10),
                      Text(
                        'Mati Total',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            color: bUngu,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 200),
                      Theme(
                        data: Theme.of(context)
                            .copyWith(unselectedWidgetColor: bUngu),
                        child: Checkbox(
                          activeColor: bUngu,
                          value: isChecked3,
                          onChanged: (value) {
                            setState(() {
                              isChecked3 = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(height: 30, width: 1, color: bUngu),
                      SizedBox(width: 10),
                      Text(
                        'Tidak Dapat Sinyal',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            color: bUngu,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 142),
                      Theme(
                        data: Theme.of(context)
                            .copyWith(unselectedWidgetColor: bUngu),
                        child: Checkbox(
                          activeColor: bUngu,
                          value: isChecked4,
                          onChanged: (value) {
                            setState(() {
                              isChecked4 = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(height: 30, width: 1, color: bUngu),
                      SizedBox(width: 10),
                      Text(
                        'Power Mati Hidup',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            color: bUngu,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 148),
                      Theme(
                        data: Theme.of(context)
                            .copyWith(unselectedWidgetColor: bUngu),
                        child: Checkbox(
                          activeColor: bUngu,
                          value: isChecked5,
                          onChanged: (value) {
                            setState(() {
                              isChecked5 = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(height: 30, width: 1, color: bUngu),
                      SizedBox(width: 10),
                      SizedBox(
                        height: 30,
                        width: 200,
                        child: TextField(
                          controller: _problemController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent,
                            hintText: 'Lainnya',
                            hintStyle: GoogleFonts.inter(
                                fontSize: 14, color: Colors.black),
                          ),
                          onChanged: (value) => inputCheck(),
                        ),
                      ),
                      SizedBox(width: 67),
                      Theme(
                        data: Theme.of(context)
                            .copyWith(unselectedWidgetColor: bUngu),
                        child: Checkbox(
                          activeColor: bUngu,
                          value: isChecked6,
                          onChanged: (value) {
                            setState(() {
                              isChecked6 = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 11),
                  Text(
                    "Foto",
                    style: TextStyle(
                        color: gMuda,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 306,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: bUngu, width: 1),
                    ),
                    child: Column(
                      children: [
                        imagefiles != null
                            ? Wrap(
                                children: imagefiles!.map((imageone) {
                                  return Container(
                                      child: Card(
                                          child: Container(
                                    height: 120,
                                    width: 120,
                                    child: Image.file(
                                      File(imageone.path),
                                      fit: BoxFit.fitWidth,
                                    ),
                                  )));
                                }).toList(),
                              )
                            : Container(),
                        SizedBox(height: 4),
                        IconButton(
                          icon: Icon(Icons.camera_alt, color: bUngu),
                          onPressed: () async {
                            await openImages();
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 11),
                  Text(
                    "Waktu",
                    style: GoogleFonts.inter(
                        color: gMuda,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      showDatePicker();
                    },
                    child: Container(
                      width: 306,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: bUngu,
                            width: 1,
                          )),
                      child: Row(
                        children: [
                          Container(
                            width: 270,
                            child: Row(
                              children: [
                                SizedBox(width: 15),
                                Text(selectedDate == null
                                    ? ""
                                    : "$formattedDate"),
                                SizedBox(width: 130),
                              ],
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 11),
                  Text(
                    "Note ",
                    style: TextStyle(
                      color: gMuda,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: 4),
                  SizedBox(
                    width: 306,
                    child: TextField(
                      minLines: 10,
                      controller: _noteController,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: bUngu),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.blue),
                        ),
                        hintText: 'Notes Tambahan',
                        hintStyle:
                            GoogleFonts.inter(fontSize: 14, color: bUngu),
                      ),
                      onChanged: (value) => inputCheck(),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: SizedBox(
                      width: 145,
                      height: 41,
                      child: OutlinedButton(
                        child: Text(
                          "Next",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: //isValid ?
                            () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LocationPage(),
                          ),
                        ),
                        //: null,
                        style: OutlinedButton.styleFrom(
                          backgroundColor: bdark,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showDatePicker() {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext builder) {
          return Container(
            height: MediaQuery.of(context).copyWith().size.height * 0.25,
            color: Colors.white,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.dateAndTime,
              onDateTimeChanged: (value) {
                if (value != null && value != selectedDate)
                  setState(() {
                    selectedDate = value;
                    DateTime now = DateTime.now();
                    formattedDate =
                        DateFormat('yyyy-MM-dd – kk:mm').format(selectedDate!);
                  });
              },
              initialDateTime: DateTime.now(),
              minimumYear: 2022,
              maximumYear: 2022,
            ),
          );
        });
  }
}
