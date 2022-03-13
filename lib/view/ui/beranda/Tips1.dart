import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../app_color.dart';

class Tips1 extends StatefulWidget {
  const Tips1({Key? key}) : super(key: key);

  @override
  State<Tips1> createState() => _Tips1State();
}

class _Tips1State extends State<Tips1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'How To Bore Up Your Motorcycle',
          maxLines: 2,
          style: GoogleFonts.inter(
              fontSize: 20, color: bdark, fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: bdark),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        children: [
          Image.asset('image/Tips1.jpeg'),
          SizedBox(height: 20),
          Center(
            child: Container(
              width: 311,
              height: 187,
              child: Column(
                children: [
                  Text(
                    'Pertama Pastikan diameter silinder sesuaiSatu hal yang wajib diperhatikan sebelum melakukan bore up adalah memastikan batas maksimum diameter silinder  bila diperbesar. Teknik bore up ada dua macam, yaitu bore up dengan silinder orisinal yang diperbesar diameternya dan kedua hitung kembali kapasitas mesinSetelah memastikan ketebalan silinder yang memungkinkan untuk diperbesar, langkah selanjutnya adalah menghitung ulang kapasitas isi mesin atau cc mesin motor',
                    maxLines: null,
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 41),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Text(
                'Video',
                maxLines: null,
                style: GoogleFonts.inter(
                    fontSize: 16, color: bdark, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 5),
          Container(
              width: 371, height: 168, child: Image.asset('image/Video.jpeg')),
        ],
      ),
    );
  }
}
