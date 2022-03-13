import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:latihan/view/ui/navigation_bar.dart';
import '../../../app_color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pesanan/filter.dart';

class VerificationPhone extends StatefulWidget {
  @override
  _VerificationPhoneState createState() => _VerificationPhoneState();
}

class _VerificationPhoneState extends State<VerificationPhone> {
  bool _onEditing = true;
  late String _code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: bdark),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                  width: 266,
                  height: 266,
                  child: Image.asset('image/Logo.jpeg')),
              Text(
                'Verifikasi Handphone',
                style: GoogleFonts.workSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: bdark,
                ),
              ),
              SizedBox(height: 43),
              SizedBox(
                width: 300,
                child: Text(
                  'Lakukan Verifikasi untuk melanjutkan penggunaan layanan ini, untuk memastikan kalau ini kamu',
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.workSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
              SizedBox(height: 85),
              Center(
                child: VerificationCode(
                  textStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                  keyboardType: TextInputType.number,
                  underlineColor: Colors.blue,
                  length: 4,
                  cursorColor: Colors.blue,
                  onCompleted: (String value) {
                    setState(() {
                      _code = value;
                    });
                  },
                  onEditing: (bool value) {
                    setState(() {
                      _onEditing = value;
                    });
                    if (!_onEditing) FocusScope.of(context).unfocus();
                  },
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: _onEditing
                      ? Text(
                          'Lengkapi Kode',
                          style: GoogleFonts.workSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        )
                      : Center(
                          child: SizedBox(
                            height: 41,
                            width: 145,
                            child: OutlinedButton(
                              child: Text(
                                "Verifikasi",
                                style: GoogleFonts.workSans(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: bdark),
                              onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Filter(),
                                ),
                              ),
                            ),
                          ),
                        ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
