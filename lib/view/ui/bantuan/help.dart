import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../app_color.dart';

class HelpCenter extends StatefulWidget {
  @override
  _HelpCenterState createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 17),
        child: Container(
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70),
              Text(
                'Get Some Help!',
                style: GoogleFonts.workSans(
                    fontSize: 24, color: bdark, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 11),
              SizedBox(
                width: 270,
                child: Text(
                  'please contact our costumer care if you need urgently',
                  maxLines: 2,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.inter(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(height: 25),
              Container(
                width: 319,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 10,
                      blurRadius: 7,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    SizedBox(width: 27),
                    SvgPicture.asset('assets/phone.svg'),
                    SizedBox(width: 25),
                    Text(
                      'Telepon',
                      maxLines: 2,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: 319,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 10,
                      blurRadius: 7,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    SizedBox(width: 25),
                    Image.asset('image/WhatsApp.jpg'),
                    SizedBox(width: 25),
                    Text(
                      'WhatsApp',
                      maxLines: 2,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
