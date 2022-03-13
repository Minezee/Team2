import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan/view/ui/pesanan/detail_reparator.dart';

import '../../../app_color.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: bdark),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17, vertical: 12),
          child: Container(
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pilih Lokasi',
                  style: GoogleFonts.inter(
                      fontSize: 24, color: bdark, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 24),
                Center(
                  child: Card(
                      child: SizedBox(
                          height: 300, child: Image.asset('image/myMap.jpeg'))),
                ),
                SizedBox(height: 24),
                Text(
                  'Alamat',
                  style: GoogleFonts.inter(
                      fontSize: 16, color: bdark, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 24),
                Text(
                  'Jl. Taman Fasco No.2 , Tangerang Selatan',
                  style: GoogleFonts.workSans(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 100),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Estimasi',
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              color: bdark,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Rp. 40.000,00.-',
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            color: bdark,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 70),
                    Center(
                      child: SizedBox(
                        width: 120,
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
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  _buildPopupDialog(context),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: bdark,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            'image/good.jpg',
          ),
          SizedBox(height: 9),
          Text(
            'Success Find Reparator',
            style: GoogleFonts.inter(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 6),
          SizedBox(
            width: 200,
            child: Text(
              'please wait until reparator come to your house',
              textAlign: TextAlign.center,
              maxLines: 2,
              style: GoogleFonts.inter(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 0),
        ],
      ),
      actions: <Widget>[
        Center(
          child: SizedBox(
            width: 120,
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
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ReparatorPage(),
              )),
              style: OutlinedButton.styleFrom(
                backgroundColor: bdark,
              ),
            ),
          ),
        ),
        SizedBox(height: 17),
      ],
    );
  }
}
