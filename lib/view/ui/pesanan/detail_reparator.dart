import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan/view/ui/pesanan/final.dart';

import '../../../app_color.dart';

class ReparatorPage extends StatefulWidget {
  const ReparatorPage({Key? key}) : super(key: key);

  @override
  State<ReparatorPage> createState() => _ReparatorPageState();
}

class _ReparatorPageState extends State<ReparatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 17),
          child: Container(
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 70),
                Text(
                  'Detail Reparator',
                  style: GoogleFonts.inter(
                      fontSize: 24, color: bdark, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 40),
                Center(
                  child: Image.asset('image/reparator.jpg'),
                ),
                SizedBox(height: 25),
                SizedBox(
                  width: 270,
                  child: Text(
                    'Mbak Suwadi, ahli memperbaiki barang elektronik dengan memperbaiki barang lebih dari 100 AC dan TV di berbagai daerah.',
                    textAlign: TextAlign.left,
                    maxLines: null,
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 47),
                Text(
                  'Certification',
                  style: GoogleFonts.inter(
                      fontSize: 16, color: bdark, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 14),
                    Container(height: 30, width: 1, color: Bblue),
                    SizedBox(width: 10),
                    Text(
                      'Keselamatan Kerja',
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Bblue,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 14),
                    Container(height: 30, width: 1, color: Bblue),
                    SizedBox(width: 10),
                    Text(
                      'Ahli Kelistrikan',
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Bblue,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 14),
                    Container(height: 30, width: 1, color: Bblue),
                    SizedBox(width: 10),
                    Text(
                      'Elektronik E31',
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Bblue,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 52),
                Center(
                  child: SizedBox(
                    width: 190,
                    height: 46,
                    child: Image.asset('image/step1.jpeg'),
                  ),
                ),
                SizedBox(height: 42),
                Center(
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FinalEstimation(),
                    )),
                    child: Text(
                      'Wait your reparator...',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
