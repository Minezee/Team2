import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan/view/ui/pesanan/review.dart';

import '../../../app_color.dart';

class FinalEstimation extends StatefulWidget {
  const FinalEstimation({Key? key}) : super(key: key);

  @override
  State<FinalEstimation> createState() => _FinalEstimationState();
}

class _FinalEstimationState extends State<FinalEstimation> {
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
                  'Final Estimation',
                  style: GoogleFonts.inter(
                      fontSize: 24, color: bdark, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 42),
                Row(
                  children: [
                    Text(
                      'Kabel A4',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 202),
                    Text(
                      '100.000',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Lem Listrik',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 197),
                    Text(
                      '20.000',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Layar LCD',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 192),
                    Text(
                      '400.000',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Jasa',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 229),
                    Text(
                      '200.000',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                Row(
                  children: [
                    SizedBox(width: 183),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Estimasi',
                            style: GoogleFonts.inter(
                                fontSize: 16,
                                color: bdark,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Rp. 720.000,00.-',
                            style:
                                GoogleFonts.inter(fontSize: 18, color: bdark),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 207),
                Center(
                  child: SizedBox(
                    width: 190,
                    height: 46,
                    child: Image.asset('image/step2.jpeg'),
                  ),
                ),
                SizedBox(height: 31),
                Center(
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      SizedBox(
                        width: 137,
                        height: 41,
                        child: OutlinedButton(
                          child: Text(
                            "Cash",
                            style: GoogleFonts.workSans(
                              color: bUngu,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Review(),
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 1.0, color: bUngu),
                            primary: Colors.black,
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      SizedBox(
                        width: 137,
                        height: 41,
                        child: OutlinedButton(
                          child: Text(
                            "E-Money",
                            style: GoogleFonts.workSans(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: //isValid ?
                              () {},
                          //: null,
                          style: OutlinedButton.styleFrom(
                            backgroundColor: bdark,
                          ),
                        ),
                      ),
                    ],
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
