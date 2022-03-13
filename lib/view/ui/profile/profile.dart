import 'package:flutter/material.dart';
import 'package:latihan/view/ui/auth/login.dart';
import 'package:latihan/view/ui/profile/term.dart';
import 'package:latihan/view/ui/profile/update_profile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan/app_color.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Container(
                color: Colors.transparent,
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Halo Maura",
                      style: GoogleFonts.inter(
                        color: bdark,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 11),
                    SizedBox(
                      width: 240,
                      height: 32,
                      child: Text(
                        "please fill your identity correctly for better service",
                        maxLines: 2,
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 21),
                    Center(
                      child: Container(
                        height: 113,
                        width: 360,
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
                        child: Column(
                          children: [
                            SizedBox(height: 30),
                            Row(
                              children: [
                                SizedBox(width: 20),
                                Text(
                                  "Maura Santika",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 17),
                                Text(
                                  "Terverifikasi",
                                  style: GoogleFonts.inter(
                                    color: Color.fromARGB(255, 71, 196, 75),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 86),
                                InkWell(
                                  splashColor: Colors.grey,
                                  onTap: () => Navigator.of(context)
                                      .push(MaterialPageRoute(
                                    builder: (context) => ProfileUpdate(),
                                  )),
                                  child: Text(
                                    "ubah",
                                    style: GoogleFonts.inter(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 23),
                            Row(
                              children: [
                                SizedBox(width: 20),
                                Text(
                                  "081275377097",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 13),
                                Text(
                                  "Terverifikasi",
                                  style: GoogleFonts.inter(
                                    color: Color.fromARGB(255, 71, 196, 75),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 83),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 33),
          InkWell(
            splashColor: Colors.grey,
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => TermAndCondition(),
            )),
            child: Container(
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
                  SizedBox(width: 24),
                  SizedBox(
                      width: 24,
                      height: 24,
                      child: Image.asset('image/term.jpeg')),
                  SizedBox(width: 22),
                  Text(
                    "Terms & Condition",
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: SizedBox(
              width: 250,
              height: 55,
              child: OutlinedButton(
                child: Text(
                  "Log Out",
                  style: GoogleFonts.inter(
                    color: bdark,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                  (_) => false,
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 1.0, color: bdark),
                  primary: Colors.black,
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
