import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan/view/ui/beranda/home.dart';
import 'package:latihan/view/ui/navigation_bar.dart';
import 'package:latihan/view/ui/profile/profile.dart';

import '../../../app_color.dart';

class ProfileUpdate extends StatefulWidget {
  const ProfileUpdate({Key? key}) : super(key: key);

  @override
  State<ProfileUpdate> createState() => _ProfileUpdateState();
}

class _ProfileUpdateState extends State<ProfileUpdate> {
  TextEditingController _nameController = TextEditingController();

  TextEditingController _numberController = TextEditingController();
  bool isValid = false;
  bool isObscure = true;

  @override
  void dispose() {
    _nameController.dispose();

    _numberController.dispose();
    super.dispose();
  }

  inputCheck() {
    if (_nameController.text.isNotEmpty && _numberController.text.isNotEmpty) {
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
      body: Container(
        color: Colors.transparent,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 27),
                child: Container(
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nomor Telpon",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                        height: 56,
                        width: 306,
                        child: TextField(
                          controller: _numberController,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: bUngu),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: bdark),
                            ),
                            hintText: 'Masukkan Nomor Telpon',
                            hintStyle: GoogleFonts.workSans(
                                fontSize: 14, color: bUngu),
                          ),
                          onChanged: (value) => inputCheck(),
                        ),
                      ),
                      SizedBox(
                        height: 16 * a,
                      ),
                      Container(
                        color: Colors.transparent,
                        child: Text(
                          "Nama Lengkap",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                        height: 56,
                        width: 306,
                        child: TextField(
                          controller: _nameController,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: bUngu),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: bdark),
                            ),
                            hintText: 'Masukkan Nama Lengkap',
                            hintStyle: GoogleFonts.workSans(
                                fontSize: 14, color: bUngu),
                          ),
                          onChanged: (value) => inputCheck(),
                        ),
                      ),
                      SizedBox(height: 23 * a),
                      Center(
                        child: InkWell(
                          splashColor: Colors.grey,
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  _buildPopupDialog(context),
                            );
                          },
                          child: Container(
                            width: 241,
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: bdark,
                            ),
                            child: Center(
                              child: Text(
                                "Update",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
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
          'Success',
          style: GoogleFonts.inter(
              fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 6),
        SizedBox(
          width: 200,
          child: Text(
            'you have update and change profile form',
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
          width: 200,
          height: 46,
          child: OutlinedButton(
            child: Text(
              "Back To Menu",
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () => Navigator.of(context).pop(),
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
