import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:latihan/view/ui/navigation_bar.dart';
import '../../../app_color.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationEmail extends StatefulWidget {
  @override
  _VerificationEmailState createState() => _VerificationEmailState();
}

class _VerificationEmailState extends State<VerificationEmail> {
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
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17),
        child: Container(
          color: Colors.transparent,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: SizedBox(
                      height: 266,
                      width: 266,
                      child: Image.asset('image/Logo.jpeg')),
                ),
                SizedBox(height: 12),
                Text(
                  'Kode Verifikasi',
                  style: GoogleFonts.workSans(
                      fontSize: 28, fontWeight: FontWeight.bold, color: bdark),
                ),
                SizedBox(
                  width: 400,
                  child: Text(
                    'masukkan nomor kode verifikasi yang telah dikirimkan melalui email mu',
                    maxLines: 2,
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
                                    builder: (context) => HomePage(),
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
      ),
    );
  }
}
